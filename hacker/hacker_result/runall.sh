#!/bin/bash

set -e

# 遍历 p02 ~ p25
for d in p{11..25}; do
    echo "=========================="
    echo "▶ Processing $d ..."
    echo "=========================="

    cd $d

    # 1. 拷贝 Makefile
    cp ../p01/Makefile Makefile

    # 2. 生戬
    echo "▶ make orig_gcc"
    make orig_gcc > /dev/null

    # 3. 测试原始性能
    echo "▶ running original a.out"
    echo "### Original x86 Performance" > x86_ori.md
    echo '```' >> x86_ori.md
    { time ./a.out 100000000; } >> x86_ori.md 2>&1
    echo '```' >> x86_ori.md

    # 4. 使用 STOKE 优化
    echo "▶ make (STOKE optimize)"
    make > log.txt 2>&1

    # 5. 测试优化后的性能
    echo "▶ running optimized a.out"
    echo "### Optimized x86 Performance" > x86_opti.md
    echo '```' >> x86_opti.md
    { time ./a.out 100000000; } >> x86_opti.md 2>&1
    echo '```' >> x86_opti.md

    echo "✔ DONE: $d"
    echo ""

    cd ..
done

echo "============================="
echo "ALL 25 DIRECTORIES COMPLETED!"
echo "============================="

