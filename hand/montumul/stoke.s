1  # STOKE
2
3  shlq 32, rcx
4  movl edx, edx
5  xorq rdx, rcx
6  movq rcx, rax
7  mulq rsi
8  addq r8, rdi
9  adcq 0, rdx
10 addq rdi, rax
11 adcq 0, rdx
12 movq rdx, r8
13 movq rax, rdi
