# Loop Benchmark 实验总结

## 1. 实验背景
对比 `traverse` 函数在 GCC -O3 优化下 (Original) 与 STOKE 优化下 (Optimized) 的性能差异。将 x86 汇编翻译为 RISC-V 汇编，并在 QEMU 中运行测试。

## 2. 翻译策略对比

### Original (基于 `gcc.s`)
*   **源文件**: `gcc.s` (GCC -O3)
*   **RISC-V 文件**: `traverse_rv64_ori.s`
*   **特点**: 
    *   代码非常紧凑高效。
    *   **寄存器分配**: 循环变量 `head` 全程驻留在寄存器 (`rdi` -> `a0`) 中。
    *   **内存访问**: 仅在读取 `val` 和 `next` 指针时访问内存。

### Optimized (基于 `stoke.s`)
*   **源文件**: `stoke.s` (STOKE Output)
*   **RISC-V 文件**: `traverse_rv64_opt.s`
*   **特点**:
    *   代码逻辑正确，但实现方式较笨重。
    *   **寄存器分配**: 未能将 `head` 提升至寄存器。
    *   **内存访问**: 每次循环迭代都强制从栈内存 (`-0x8(%rsp)` -> `8(sp)`) 读取和写入 `head` 变量。这增加了不必要的 `ld/sd` 指令。

## 3. 运行步骤

```bash
cd hand/loop

# 1. 编译 Original 版本
riscv64-linux-gnu-g++ -static -O0 main.cc traverse_rv64_ori.s -o name_ori

# 2. 编译 Optimized 版本
riscv64-linux-gnu-g++ -static -O0 main.cc traverse_rv64_opt.s -o name_opt

# 3. 运行测试 (迭代 10,000,000 次)
# Original
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_ori 10000000

# Optimized
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_opt 10000000
```

## 4. 实验结果

| 版本 | 耗时 (User) | 耗时 (Total) | 说明 |
| :--- | :--- | :--- | :--- |
| **Original (GCC)** | **1.26s** | **1.338s** | 纯寄存器操作，效率最高 |
| **Optimized (STOKE)** | **1.26s** | **1.346s** | 包含多余栈访问，略慢或持平 |

## 5. 结论
在此 `loop` 案例中，STOKE 生成的代码 (`stoke.s`) **并没有** 优于 GCC -O3 生成的代码 (`gcc.s`)。
*   GCC 成功进行了寄存器提升优化。
*   STOKE 生成的代码保留了对栈内存的频繁读写，导致产生了额外的内存流量。
*   忠实翻译后的 RISC-V 版本复现了这一性能特征，Ori 版本略微快于或等于 Opt 版本。

"However it fails to eliminate the instructions that copy the head pointer from, and back to, the stack on every iteration of the loop."
(然而，它未能消除在每次循环迭代中将 head 指针从栈中复制出来、又复制回栈的指令。)

"In contrast, both production compilers were able to eliminate the memory traffic by caching the pointer in a register prior to entering the loop."
(相比之下，生产级编译器[如GCC]能够通过在进入循环前将指针缓存到寄存器中来消除这些内存流量。)

"Unsurprisingly, the rewrite discovered by Stoke is slower."
(不出所料，Stoke 发现的重写版本更慢。)
