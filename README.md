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

买riscv机器