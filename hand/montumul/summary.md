# Montgomery Multiplication Benchmark 实验总结

## 1. 实验背景
对比 `mont_mul` 函数在 GCC -O3 优化下 (Original) 与 STOKE 优化下 (Optimized) 的性能差异。我们将 x86 汇编忠实地翻译为 RISC-V 汇编，并在 QEMU 中运行测试。

## 2. 翻译策略对比

### Original (基于 `gcc.s`)
*   **源文件**: `gcc.s` (GCC -O3)
*   **RISC-V 文件**: `mont_mul_rv64_ori.s`
*   **特点**: 
    *   使用了大量的乘法 (`imulq`) 和加法 (`addq`, `adcq`) 指令。
    *   逻辑较为复杂，包含条件跳转 (`jae .L0`)。
    *   使用了较多的寄存器进行中间计算。

### Optimized (基于 `stoke.s`)
*   **源文件**: `stoke.s` (STOKE Output)
*   **RISC-V 文件**: `mont_mul_rv64_opt.s`
*   **特点**:
    *   代码行数显著减少。
    *   使用了 `shlq`, `xorq`, `mulq` 等指令，逻辑更加精简。
    *   消除了条件跳转，变为直线型代码 (Straight-line code)。

## 3. 运行步骤

```bash
cd hand/montumul

# 1. 编译 Original 版本
riscv64-linux-gnu-g++ -static -O0 main.cc mont_mul_rv64_ori.s -o name_ori

# 2. 编译 Optimized 版本
riscv64-linux-gnu-g++ -static -O0 main.cc mont_mul_rv64_opt.s -o name_opt

# 3. 运行测试 (迭代 10,000,000 次)
# Original
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_ori 10000000

# Optimized
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_opt 10000000
```

## 4. 实验结果

| 版本 | 耗时 (User) | 耗时 (Total) | 说明 |
| :--- | :--- | :--- | :--- |
| **Original (GCC)** | **1.53s** | **1.533s** | 逻辑复杂，含分支 |
| **Optimized (STOKE)** | **1.52s** | **1.522s** | 代码精简，无分支 |

## 5. 结论
在此 `mont_mul` 案例中，尽管 STOKE 生成的代码 (`stoke.s`) 在指令数量上看起来更少且消除了分支，但在 RISC-V 模拟环境下的性能与 GCC -O3 生成的代码 (`gcc.s`) **几乎持平** (甚至略慢 0.01s，误差范围内)。

这可能是因为：
1.  **指令延迟差异**: STOKE 使用的 `mulq` (64x64=128) 在 RISC-V 中需要两条指令 (`mul` + `mulhu`) 来模拟，增加了指令数。
2.  **QEMU 模拟开销**: QEMU 的翻译和执行机制可能掩盖了微小的指令级优化差异。
3.  **GCC 的优化已经很强**: GCC 生成的代码虽然长，但可能针对流水线进行了较好的调度（尽管在 QEMU 中体现不明显）。

总体而言，STOKE 成功生成了功能等价且代码更紧凑的版本，但在当前的测试环境下未表现出显著的性能优势。
