.text
    .globl _Z8traverseP4Node
    .type  _Z8traverseP4Node, @function

# 忠实翻译 stoke.s
# stoke.s 内容:
# pushq %rbp
# movq %rsp, %rbp
# movq %rdi, -0x8(%rsp)
# .L_400868:
# cmpq $0x0, -0x8(%rsp)
# je .L_400892
# movq -0x8(%rsp), %rax
# movq 0x8(%rax), %rcx
# movq %rcx, -0x8(%rsp)
# sall $0x1, (%rax)
# jmpq .L_400868
# .L_400892:
# popq %rbp
# retq

_Z8traverseP4Node:
    addi sp, sp, -16
    sd   s0, 0(sp)      # pushq %rbp
    addi s0, sp, 16     # movq %rsp, %rbp (approximate frame pointer behavior)
    
    # movq %rdi, -0x8(%rsp)
    # Note: In x86, push rbp moves rsp down by 8. So -8(rsp) is actually -16(original_rsp).
    # Here we just use 8(sp) as the slot.
    sd   a0, 8(sp)

.L_loop:
    # cmpq $0x0, -0x8(%rsp)
    ld   a5, 8(sp)
    beqz a5, .L_done

    # movq -0x8(%rsp), %rax
    ld   a4, 8(sp)      # rax = a4

    # movq 0x8(%rax), %rcx
    ld   a3, 8(a4)      # rcx = a3

    # movq %rcx, -0x8(%rsp)
    sd   a3, 8(sp)

    # sall $0x1, (%rax)
    # Note: rax (a4) still holds the OLD head pointer here, which is correct.
    lw   a2, 0(a4)
    slliw a2, a2, 1
    sw   a2, 0(a4)

    j    .L_loop

.L_done:
    ld   s0, 0(sp)
    addi sp, sp, 16
    ret
