#!/bin/bash
# ============================================================
# RISC-V traverse 性能对比
# ============================================================

# 可修改的参数
ITER=10      # 每次链表长度
SEED=4            # 随机种子
RUNS=1000        # 运行次数
CXX=riscv64-linux-gnu-g++
QEMU="qemu-riscv64 -L /usr/riscv64-linux-gnu"

# ============================================================
function build_and_bench() {
    local src=$1
    local tag=$2
    local exe="ll_rv64_${tag}"

    echo "📦 编译 ${src} -> ${exe}"
    $CXX -O0 main.cc fxn.cc ${src} -o ${exe}
    if [ $? -ne 0 ]; then
        echo "❌ 编译失败: ${src}"
        exit 1
    fi

    echo "⚙️  开始运行 ${RUNS} 次..."
    local total=0
    for ((i=1; i<=RUNS; i++)); do
        t=$(/usr/bin/time -f "%e" $QEMU ./${exe} $ITER $SEED 2>&1 >/dev/null)
        total=$(echo "$total + $t" | bc)
        # 每1000次输出一次进度
        if (( i % 1000 == 0 )); then
            echo "  -> 已完成 $i/$RUNS 次"
        fi
    done

    local avg=$(echo "scale=6; $total / $RUNS" | bc)
    echo "✅ ${tag} 平均运行时间: ${avg} 秒"
    echo
    echo $avg
}

# ============================================================
echo "==============================================="
echo "🏁 RISC-V traverse 10000 次平均性能对比"
echo "==============================================="

avg1=$(build_and_bench traverse_rv64.s "stoke_style")
avg2=$(build_and_bench traverse_rv64_before.s "original")

echo "==============================================="
echo "📊 结果对比"
echo "-----------------------------------------------"
echo "stoke_style 平均:   ${avg1} 秒"
echo "original     平均:   ${avg2} 秒"
diff=$(echo "scale=6; $avg2 - $avg1" | bc)
echo "-----------------------------------------------"
echo "差异 (original - stoke): ${diff} 秒"
echo "==============================================="

