# SAXPY Benchmark 实验总结

## 1. 实验背景
对比 `saxpy` 函数在 GCC -O3 优化下 (Original) 与 STOKE 优化下 (Optimized) 的性能差异。我们将 x86 汇编忠实地翻译为 RISC-V 汇编，并在 QEMU 中运行测试。

## 2. 翻译策略对比

### Original (基于 `gcc.s`)
*   **源文件**: `gcc.s` (GCC -O3)
*   **RISC-V 文件**: `saxpy_rv64_ori.s`
*   **特点**: 
    *   使用了标量指令进行循环展开 (Unrolling)。
    *   每次处理一个元素，但通过指令调度交错执行。
    *   频繁的地址计算 (`leaq`) 和内存访问。

### Optimized (基于 `stoke.s`)
*   **源文件**: `stoke.s` (STOKE Output)
*   **RISC-V 文件**: `saxpy_rv64_opt.s`
*   **特点**:
    *   使用了 x86 SSE 向量指令 (`movups`, `pmulll`, `paddw`) 一次处理 4 个元素。
    *   **RISC-V 翻译挑战**: 标准 RISC-V (RV64GC) 没有直接对应的 SIMD 指令（除非使用 V 扩展）。为了在通用 QEMU 环境下运行，我们使用标量指令模拟了向量操作（一次加载/计算/存储 4 个数据）。
    *   这种模拟虽然逻辑等价，但失去了硬件并行加速的优势，且增加了寄存器压力。

## 3. 运行步骤

```bash
cd hand/sax

# 1. 编译 Original 版本
riscv64-linux-gnu-g++ -static -O0 main.cc saxpy_rv64_ori.s -o name_ori

# 2. 编译 Optimized 版本
riscv64-linux-gnu-g++ -static -O0 main.cc saxpy_rv64_opt.s -o name_opt

# 3. 运行测试 (迭代 10,000,000 次)
# Original
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_ori 10000000

# Optimized
time qemu-riscv64 -L /usr/riscv64-linux-gnu ./name_opt 10000000
```

## 4. 实验结果

| 版本 | 耗时 (User) | 耗时 (Total) | 说明 |
| :--- | :--- | :--- | :--- |
| **Original (GCC)** | **3.76s** | **4.158s** | 标量循环展开，指令调度较好 |
| **Optimized (STOKE)** | **4.18s** | **4.573s** | 模拟 SIMD 导致寄存器压力大，无硬件加速 |

## 5. 结论
在此 `saxpy` 案例中，GCC -O3 生成的代码 (`gcc.s`) 优于 STOKE 生成的代码 (`stoke.s`)。

*   **原因分析**: STOKE 生成的代码依赖于 x86 的 SSE 向量指令集来实现加速。在没有硬件向量支持（或未使用 RISC-V V 扩展）的情况下，用标量指令模拟向量行为反而比编译器精心调度的标量代码更慢。
*   **跨架构局限**: 这再次证明了针对特定架构（x86 SIMD）的优化在移植到不同架构（RISC-V Scalar）时可能会失效，甚至产生负面效果。如果目标 RISC-V 平台支持 V 扩展并正确翻译，结果可能会截然不同。
