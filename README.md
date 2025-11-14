# SuperOptimization
超优化 毕业设计
- stoke->优化后汇编->riscv汇编

```bash
riscv64-linux-gnu-g++ -static -O0 main.cc function.s  -o name
riscv64-linux-gnu-g++ -O0 main.cc function.s  -o name
qemu-riscv64 -L /usr/riscv64-linux-gnu ./name
```

stoke的example中
bansal exp montmul parity saxpy strata tutorial hacker(25个)成功

测x86 翻译 arm和riscv以后 测速度

nacl_shootout(字符函数库) 未成功


1. 在一个巨大的“可能程序”空间里进行随机搜索。
2. 通过成千上万次微小的、随机的代码变动（例如：替换一条指令、交换两个操作数）。
3. 使用一个成本函数（Cost Function） 来评估每个新生成的程序的好坏。成本越低越好。
4. 这个成本函数通常由两部分组成：正确性（Correctness） 和 性能（Performance）。只有在所有测试用例上都正确的程序才会被考虑，然后在这些正确的程序中寻找性能最好的那个。

## 流程
+ 【准备 C 代码 & 编译】: 找到代码中的性能瓶颈（热点函数），并以特定方式编译程序。
+ 【提取 Extract】: 从编译后的二进制文件中，将目标函数的汇编代码提取出来。
+ 【生成测试用例 Testcase】: 为目标函数生成一组高质量的输入/输出样本，这是 STOKE 判断“正确性”的唯一依据。
+ 【搜索 Search】: 运行 STOKE 的核心搜索算法，寻找一个功能等价但性能更优的汇编实现。
+ 【替换 Replace】: 将 STOKE 找到的最优代码“注入”回原始的二进制文件。
+ 【验证】: 运行修改后的程序，确认功能正确并测试性能提升。

## 具体操作

### **编译程序**
```bash
g++ -std=c++11 -O3 -fno-inline -c fxn.cc
g++ -std=c++11 -O3 main.cc fxn.o -o a.out
```
`-fno-inline`: 必须添加！ 这可以防止编译器将函数内联到`main`函数中，从而确保它作为一个独立的、可被提取的函数存在于二进制文件中。

### **测试原始性能**
```bash
time ./a.out 100000000
```
### **提取函数**
```ini
# extract.conf
##### stoke extract config file

# -i: 指定输入的二进制文件 (Input)
-i ./a.out

# -o: 指定输出目录，存放提取出的所有函数汇编 (Output)
-o bins
# 只提取特定函数（使用正则表达式）
--functions "{ _Z6popcnti }"

# 排除某些函数
--ignore "{ _Z.*helper.* }"
```
```bash
stoke extract --config extract.conf

# 查看提取的函数
ls bins/
# 会看到类似 _Z6XXXXX.s 的文件（函数名经过C++名称修饰）

# 查看函数内容
cat bins/_Z6XXXXX.s
```
> 名称修饰（Name Mangling）说明：  
>+ C++ 函数名会被编码，例如 popcnt(int32_t) → _Z6popcnti  
>+ 使用 c++filt 解码：c++filt _Z6popcnti  
>+ C 函数使用 extern "C" 可以避免名称修饰  


### **生成测试用例**
方法 1: 随机生成 + 回溯（最简单）
```bash
stoke testcase \
  --target bins/_Z6XXXXX.s \
  --max_testcases 1024 \
  -o test.tc
```
方法 2: 符号执行（适合有分支的代码）
```bash
stoke_tcgen \
  --target bins/_Z6XXXXX.s \
  --bound 64 \
  --output test.tc
```
方法 3: 动态插桩（最准确但有bug）
```ini
##### stoke testcase 配置文件

# 用于生成测试用例的二进制文件
--bin ./a.out

# 传递给程序的命令行参数
--args 5234523

# 反汇编目录
--functions bins

# 输出文件
-o test.tc

# 要生成测试用例的函数名
--fxn _Z6XXXXX

# 最大测试用例数
--max_testcases 1024
```
**执行**
```bash
stoke testcase --config testcase.conf
```

### STOKE 有两种主要搜索模式
#### 合成
```ini
# synthesize.conf
##### stoke search config file

# ================= Part 1: 输入与输出 =================
# --out: 最终找到的最优代码输出到哪里
--out result.s
# --target: 我们的优化目标
--target bins/_Z6popcntm.s

# ================= Part 2: 函数接口定义 (非常重要!) =================
# --def_in: 定义了哪些寄存器是函数的输入。
# 根据 x86-64 调用约定，第一个整数参数通过 %rdi 传入。
--def_in "{ %rdi }"

# --live_out: 定义了哪些寄存器是函数的输出（返回值）。
# 根据 x86-64 调用约定，整数返回值在 %rax 中。
--live_out "{ %rax }"

# ================= Part 3: 测试用例与正确性评估 =================
# --testcases: 指定测试用例文件
--testcases popcnt.tc
# --training_set: 在搜索过程中，用哪些测试用例来计算“正确性”成本。
# 这里我们用前 512 个。
--training_set "{ 0 ... 511 }"
# --test_set: 保留一部分测试用例作为“验证集”。
# 当 STOKE 认为它在训练集上找到一个完美程序后，会用验证集做最终确认。
--test_set "{ 512 ... 1023 }"

# ================= Part 4: 成本函数 (搜索的导航灯) =================
# --cost: 定义如何评估一个程序的好坏。
# "correctness + latency" 意味着：
# 1. 正确性是首要目标 (correctness 成本不为 0 的程序都是垃圾)。
# 2. 在所有正确的程序中，选择指令延迟 (latency) 最低的那个。
--cost "correctness + latency"

# 错误度量方式
--distance hamming        # 汉明距离
--misalign_penalty 1      # 位置错误的惩罚
--reduction sum           # 跨测试用例求和
--sig_penalty 9999        # 产生信号的惩罚


# CPU指令集标志
--cpu_flags "{}"
# ================= Part 5: 搜索策略与参数 =================
# --strategy: 验证策略。hold_out 表示使用上面定义的 test_set 做最终验证。
--strategy hold_out
# --timeout_iterations: 总共尝试多少次随机变换后停止搜索。
--timeout_iterations 16000000 # 16 million
# --cycle_timeout: 如果连续 1 百万次变换都没有任何进步，就重置搜索。
--cycle_timeout 1000000
# --beta: 搜索退火常数，一般保持为 1。
--beta 1

--initial_instruction_number 32  # 初始指令数
# ================= Part 6: 随机变换的权重 =================
# 定义了 STOKE 进行代码变换时，各种操作的概率。
# 比如，我们让它多尝试替换指令、操作码和操作数。
# 变换权重（proposal mass）
--instruction_mass 1      # 指令变换
--local_swap_mass 1       # 局部交换
--opcode_mass 1           # 操作码变换
--operand_mass 1          # 操作数变换
# 不进行全局交换和旋转，因为我们是从零合成。
--global_swap_mass 0
--rotate_mass 0
```
```bash
time stoke synthesize --config synthesize.conf
```
#### 优化（Optimization）- 从目标开始
```ini
## opt.conf
##### stoke search 配置文件 - 优化模式

--out opt_result.s

--target bins/_Z6popcnti.s

# 初始化：从之前的合成结果开始
--init previous
--previous synth_result.s

# 初始化策略：
# - zero: 从空程序开始（全nop）
# - target: 从目标函数开始
# - previous: 从之前的结果开始
# 如果使用previous，指定之前的结果
--previous previous_result.s
# x86-64调用约定：%rdi, %rsi, %rdx, %rcx, %r8, %r9
--def_in "{ %rdi }"

# 活跃的输出寄存器（返回值）
# 整数返回值：%rax
# 浮点返回值：%xmm0

--live_out "{ %rax }"

--testcases test.tc
--training_set "{ 0 ... 31 }"
--test_set "{ 32 ... 1023 }"

--distance hamming # 汉明距离（位差异数）
# - ulp: 浮点数ULP距离
# 位置错误惩罚
--misalign_penalty 1
# 错误聚合方式：
--reduction sum
# 产生信号（段错误等）的惩罚
--sig_penalty 9999

# 代价函数（正确性 + 性能）
--cost "100*correctness + latency"

# 复杂代价函数
--cost "correctness + 2*latency + 1000*sseavx"
# 代价函数（算术表达式）
# 可用变量：
# - correctness: 正确性（越小越好）
# - latency: 延迟估计
# - size: 指令数
# - binsize: 二进制大小
# - measured: 实际执行指令数
# - sseavx: SSE/AVX混用惩罚

--cpu_flags "{ popcnt cmov abm bmi1 bmi2 }"

# 常用指令集组合：
# 基础: "{ cmov }"
# 位操作: "{ popcnt bmi1 bmi2 lzcnt }"
# SIMD: "{ sse sse2 sse3 ssse3 sse4_1 sse4_2 avx avx2 }"

# 优化模式的变换权重
--global_swap_mass 1      # 全局交换两条指令
--instruction_mass 1      # 添加/删除指令
--local_swap_mass 1       # 局部交换（同一基本块）
--opcode_mass 1           # 改变操作码
--operand_mass 1          # 改变操作数
--rotate_mass 1           # 移动指令位置

# 合成阶段建议（添加指令为主）：
# --global_swap_mass 0
# --instruction_mass 1
# --local_swap_mass 1
# --opcode_mass 1
# --operand_mass 1
# --rotate_mass 0

# 优化阶段建议（所有变换）：
# 全部设为 1

# 退火常数（控制接受更差解的概率）
# 合成: beta = 1 (更激进)
# 优化: beta = 10 (更保守)

--beta 10                 # 更大的退火常数
--initial_instruction_number 32

--statistics_interval 1000000
--timeout_iterations 16000000
--cycle_timeout 1000000

# 验证策略：
# - none: 不验证
# - hold_out: 使用测试集
# - bounded: 有界验证（形式化）
# - formal: 完全形式化验证
--strategy hold_out

# 非目标函数（避免生成与这些等价的代码）
--non_goal "{ bins/_Z3badfunction.s }"

```
```bash
time stoke search --config opt.conf
```
###  验证结果
#### 使用测试集验证（快速）：
```bash
stoke debug verify \
  --target bins/_Z6popcnti.s \
  --rewrite synth_result.s \
  --testcases test.tc \
  --strategy hold_out
```
#### 使用形式化验证（完整）：
```bash
stoke debug verify \
  --target bins/_Z6popcnti.s \
  --rewrite synth_result.s \
  --def_in "{ %rdi }" \
  --live_out "{ %rax }" \
  --strategy bounded \
  --bound 32 \
  --abi_check
```
创建 verify.conf：
```ini
##### stoke verify 配置文件

--strategy formal         # 形式化验证

--target bins/_Z6popcnti.s
--rewrite synth_result.s

--def_in "{ %rdi }"
--live_out "{ %rax }"

--testcases test.tc
--iterations 1000
```
### 替换二进制
replace.conf
```ini 
##### stoke replace 配置文件

# 要patch的ELF二进制文件
-i ./a.out

# 替换的函数
--rewrite synth_result.s
```
```bash
stoke replace --config replace.conf

# 测试优化后的性能
time ./a.out 100000000
```

在新机器上得出测试集的x86前后对比.
glibc版本不符合.
pin无法进行二进制插桩测试,和内存有关的无法
服务器代理问题.
缺saxy montul 以及naclgood(没有程序,沙箱汇编),
此外都有x86时间对比.