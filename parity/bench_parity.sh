#!/bin/bash
# ============================================================
# Pure text RISC-V parity benchmark (no emoji / no color)
# ============================================================

ITER=1000000       # 每次运行迭代次数
RUNS=100           # 平均次数
QEMU="qemu-riscv64 -L /usr/riscv64-linux-gnu"

bench() {
    local exe=$1
    local tag=$2
    echo "Running ${tag} (${exe}) for ${RUNS} times..."
    local total=0
    for ((i=1; i<=RUNS; i++)); do
        # time 输出纯数字（秒），stdout 被丢弃
        t=$(/usr/bin/time -f "%e" -o /dev/stdout $QEMU ./${exe} ${ITER} >/dev/null 2>&1)
        # 如果 $t 为空或不是数字，则跳过
        if [[ "$t" =~ ^[0-9.]+$ ]]; then
            total=$(echo "$total + $t" | bc)
        else
            echo "Warning: invalid time output on run $i: '$t'" >&2
        fi
        if (( i % 10 == 0 )); then
            echo "  Completed $i / $RUNS"
        fi
    done
    local avg=$(echo "scale=6; $total / $RUNS" | bc)
    echo "${tag} average time: ${avg} seconds"
    echo $avg
}

echo "==============================================="
echo "RISC-V parity performance comparison"
echo "==============================================="

avg_after=$(bench parity_after "stoke_optimized")
avg_before=$(bench parity_before "original")

echo "==============================================="
echo "Results"
echo "-----------------------------------------------"
echo "stoke_optimized average: ${avg_after} s"
echo "original         average: ${avg_before} s"

# 确保两者都是数字再计算差值
if [[ "$avg_after" =~ ^[0-9.]+$ && "$avg_before" =~ ^[0-9.]+$ ]]; then
    diff=$(echo "scale=6; $avg_before - $avg_after" | bc)
    echo "-----------------------------------------------"
    echo "Difference (original - stoke): ${diff} seconds"
else
    echo "-----------------------------------------------"
    echo "Cannot compute difference (invalid numeric data)."
fi

echo "==============================================="
