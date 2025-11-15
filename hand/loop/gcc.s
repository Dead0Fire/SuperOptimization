1  # gcc -O3
2
3  movq -8(rsp), rdi
4 .L1:
5  sall (rdi)
6  movq 8(rdi), rdi
7 .L2:
8  testq rdi, rdi
9  jne .L1
