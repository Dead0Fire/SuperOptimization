.text
    .globl _Z8traverseP4Node
    .type  _Z8traverseP4Node, @function

# 忠实翻译 gcc.s
# gcc.s 内容:
# 3  movq -8(rsp), rdi  <-- 忽略此行上下文相关的栈加载，直接使用参数寄存器 a0
# 4 .L1:
# 5  sall (rdi)
# 6  movq 8(rdi), rdi
# 7 .L2:
# 8  testq rdi, rdi
# 9  jne .L1

_Z8traverseP4Node:
    # a0 holds head (rdi)
    
    # Jump to check first (correspond to .L2)
    j .L2_check

.L1_body:
    # sall (rdi) -> lw, slliw, sw
    lw   a5, 0(a0)
    slliw a5, a5, 1
    sw   a5, 0(a0)

    # movq 8(rdi), rdi -> ld a0, 8(a0)
    ld   a0, 8(a0)

.L2_check:
    # testq rdi, rdi; jne .L1
    bnez a0, .L1_body

    ret
