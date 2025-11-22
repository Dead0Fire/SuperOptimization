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
    *   使用 x86 SSE 指令 (`movups`, `pmulld`, `paddw`) 一次处理 4 个元素。
    *   RISC-V 侧用标量精确模拟：每 lane 做 32 位乘法取低 32 位，再按 16 位半字无进位相加（匹配 `paddw` 的 wrap 语义）。
    *   保持 x86 溢出语义，但缺少 SIMD 并行度。

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
| **Original (GCC)** | **3.79s** | **4.171s** | 标量循环展开，调度良好 |
| **Optimized (STOKE)** | **3.80s** | **4.204s** | 按 4 lane 16 位加法标量模拟，性能接近 |

## 5. 结论
两版性能几乎持平：GCC 略快但差距极小。当前 RISC-V 端保持了 x86 的 16 位半字溢出语义；若有 RVV 支持并以向量指令实现，STOKE 版本有望更快。
