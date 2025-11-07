# SuperOptimization
超优化 毕业设计
- stoke->优化后汇编->riscv汇编

```bash
riscv64-linux-gnu-g++ -static -O0 main.cc function.s  -o name
riscv64-linux-gnu-g++ -O0 main.cc function.s  -o name
qemu-riscv64 -L /usr/riscv64-linux-gnu ./name
```
