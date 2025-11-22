.text
.globl _Z5saxpyjPjS_i
.type _Z5saxpyjPjS_i, @function
_Z5saxpyjPjS_i:
    # Arguments:
    # a0: a (edi)
    # a1: x (rsi)
    # a2: y (rdx)
    # a3: i (ecx)

    sext.w a3, a3                 # i
    slli t0, a3, 2                # offset = i * 4
    add t1, a1, t0                # x_ptr = x + offset
    add t2, a2, t0                # y_ptr = y + offset
    li   a4, 0xffff               # mask for 16-bit lanes

    # lane 0: emulate pmulld + paddw (16-bit packed add with no carry between halves)
    lw  t3, 0(t1)                 # x[i] (signed 32-bit like pmulld)
    mulw t3, t3, a0               # mul (lower 32 bits, signed like imull)
    zext.w t3, t3                 # keep low 32 bits as unsigned
    lw  t4, 0(t2)                 # y[i]
    and  t5, t3, a4               # low16
    and  t6, t4, a4
    add  t5, t5, t6
    and  t5, t5, a4               # wrap per 16-bit lane
    srli t3, t3, 16               # high16 of product
    srli t4, t4, 16               # high16 of y
    add  t3, t3, t4
    and  t3, t3, a4
    slli t3, t3, 16
    or   t5, t5, t3
    sw   t5, 0(t1)

    # lane 1
    addi t1, t1, 4
    addi t2, t2, 4
    lw  t3, 0(t1)
    mulw t3, t3, a0
    zext.w t3, t3
    lw  t4, 0(t2)
    and  t5, t3, a4
    and  t6, t4, a4
    add  t5, t5, t6
    and  t5, t5, a4
    srli t3, t3, 16
    srli t4, t4, 16
    add  t3, t3, t4
    and  t3, t3, a4
    slli t3, t3, 16
    or   t5, t5, t3
    sw   t5, 0(t1)

    # lane 2
    addi t1, t1, 4
    addi t2, t2, 4
    lw  t3, 0(t1)
    mulw t3, t3, a0
    zext.w t3, t3
    lw  t4, 0(t2)
    and  t5, t3, a4
    and  t6, t4, a4
    add  t5, t5, t6
    and  t5, t5, a4
    srli t3, t3, 16
    srli t4, t4, 16
    add  t3, t3, t4
    and  t3, t3, a4
    slli t3, t3, 16
    or   t5, t5, t3
    sw   t5, 0(t1)

    # lane 3
    addi t1, t1, 4
    addi t2, t2, 4
    lw  t3, 0(t1)
    mulw t3, t3, a0
    zext.w t3, t3
    lw  t4, 0(t2)
    and  t5, t3, a4
    and  t6, t4, a4
    add  t5, t5, t6
    and  t5, t5, a4
    srli t3, t3, 16
    srli t4, t4, 16
    add  t3, t3, t4
    and  t3, t3, a4
    slli t3, t3, 16
    or   t5, t5, t3
    sw   t5, 0(t1)
    
    ret
