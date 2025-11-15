1  # STOKE
2
3 .L1:
4  movq -8(rsp), rdi
5  sall (rdi)
6  movq 8(rdi), rdi
7  movq rdi, -8(rsp)
8 .L2:
9  movq -8(rsp), rdi
10 testq rdi, rdi
11 jne .L1
