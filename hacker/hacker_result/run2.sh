et -e

# 所有任务目录
TASKS=(p{01..25})

THREADS=25
TOTAL=${#TASKS[@]}

# 每个线程处理多少任务
PER_THREAD=$(( (TOTAL + THREADS - 1) / THREADS ))

echo "Total tasks: $TOTAL"
echo "Threads: $THREADS"
echo "Tasks per thread: $PER_THREAD"
echo ""

run_worker() {
    local start=$1
    local end=$2

    for ((i=$start; i<=$end; i++)); do
        [ $i -ge $TOTAL ] && break
        dir=${TASKS[$i]}

        echo "▶ Worker $$ processing $dir"

        (
            cd "$dir"

            cp ../p01/Makefile Makefile

            make orig_gcc > orig_build.log 2>&1
            ( time ./a.out 100000000 ) > x86_ori.md 2>&1

            make > stoke_log.txt 2>&1
            ( time ./a.out 100000000 ) > x86_opti.md 2>&1
        )

        echo "✔ Worker $$ finished $dir"
    done
}

# 启动多个线程
for ((t=0; t<THREADS; t++)); do
    start=$(( t * PER_THREAD ))
    end=$(( start + PER_THREAD - 1 ))

    run_worker $start $end &
done

wait

echo "======================="
echo " All p01→p25 completed "
echo "======================="

