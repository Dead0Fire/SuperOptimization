# P21 Benchmark 实验总结

## 1. 实验背景
对比 `p21` 函数在 GCC -O3 优化下 (Original) 与 STOKE 优化下 (Optimized) 的性能差异。我们将 x86 汇编忠实地翻译为 RISC-V 汇编，并在 QEMU 中运行测试。

## 2. 翻译策略对比

### Original (基于 `gcc.s`)
*   **源文件**: `gcc.s` (GCC -O3)
*   **RISC-V 文件**: `p21_rv64_ori.s`
*   **特点**: 
    *   使用了无分支逻辑 (Branchless logic)。
    *   通过 `sete`, `negl`, `andl` 等指令组合来实现条件选择。
    *   避免了跳转指令，有利于流水线执行。

### Optimized (基于 `stoke.s`)
*   **源文件**: `stoke.s` (STOKE Output)
*   **RISC-V 文件**: `p21_rv64_opt.s`
*   **特点**:
    *   使用了条件传送指令 (`cmov`)。
    *   逻辑非常精简，利用了标志位 (`ZF`) 的副作用。
    *   在 RISC-V 翻译中，由于 RISC-V 没有直接的 `cmov` 指令（虽然有扩展，但标准指令集通常用分支模拟），我们使用了短跳转 (`beq`, `j`) 来模拟 `cmov`。

## 3. 运行步骤

```bash
cd hand/p21

# 1. 编译 Original 版本
riscv64-linux-gnu-g++ -static -O0 main.cc p21_rv64_ori.s -o name_ori

# 2. 编译 Optimized 版本
riscv64-linux-gnu-g++ -static -O0 main.cc p21_rv64_opt.s -o name_opt

# 3. 运行测试 (迭代 10,000,000 次)
# Original
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_ori 10000000

# Optimized
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_opt 10000000
```

## 4. 实验结果

| 版本 | 耗时 (User) | 耗时 (Total) | 说明 |
| :--- | :--- | :--- | :--- |
| **Original (GCC)** | **1.23s** | **1.233s** | 无分支实现，性能较好 |
| **Optimized (STOKE)** | **1.33s** | **1.332s** | 模拟 cmov 引入了分支，性能略降 |

## 5. 结论
在此 `p21` 案例中，GCC -O3 生成的代码 (`gcc.s`) 优于 STOKE 生成的代码 (`stoke.s`)。

*   **GCC**: 采用了完全无分支的算术逻辑 (`seqz`, `neg`, `and`)，这在现代处理器（包括 QEMU 的 JIT 编译）上通常非常高效，因为它避免了分支预测失败的开销。
*   **STOKE**: 虽然 x86 代码使用了高效的 `cmov`，但在翻译为 RISC-V 时，不得不使用分支指令 (`beq`, `j`) 来模拟条件传送（除非使用特定的 RISC-V 扩展指令如 Zicond，但标准基础指令集没有）。这种分支模拟导致了性能下降。
*   **启示**: 跨架构移植优化代码时，源架构的特性（如 x86 的 `cmov` 和标志位副作用）可能无法直接映射到目标架构，从而影响最终性能。
