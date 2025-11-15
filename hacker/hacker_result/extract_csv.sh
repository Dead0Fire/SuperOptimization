#!/bin/bash

output="result.csv"

# 写入表头
echo "case,ori,opti,speedup" > $output

for d in p*/; do
    if [[ -f "${d}x86_ori.md" && -f "${d}x86_opti.md" ]]; then
        case_name=$(basename "$d")

        ori=$(grep '^real' "${d}x86_ori.md"  | awk '{print $2}' | sed 's/0m//; s/s//')
        opti=$(grep '^real' "${d}x86_opti.md" | awk '{print $2}' | sed 's/0m//; s/s//')

        speedup=$(awk "BEGIN {printf \"%.4f\", $ori/$opti}")

        echo "${case_name},${ori},${opti},${speedup}" >> $output
    fi
done

echo "生成完毕: $output"
