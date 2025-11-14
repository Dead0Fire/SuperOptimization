    .text
    .globl _Z6paritym
    .type  _Z6paritym, @function
# size_t parity(uint64_t x): 仅统计低8位：sum((x>>i)&1, i=0..7) & 1
_Z6paritym:
    li   t0, 0          # total
    mv   t1, a0         # x

    andi t2, t1, 1      # bit0
    add  t0, t0, t2

    srli t2, t1, 1      # bit1
    andi t2, t2, 1
    add  t0, t0, t2

    srli t2, t1, 2      # bit2
    andi t2, t2, 1
    add  t0, t0, t2

    srli t2, t1, 3      # bit3
    andi t2, t2, 1
    add  t0, t0, t2

    srli t2, t1, 4      # bit4
    andi t2, t2, 1
    add  t0, t0, t2

    srli t2, t1, 5      # bit5
    andi t2, t2, 1
    add  t0, t0, t2

    srli t2, t1, 6      # bit6
    andi t2, t2, 1
    add  t0, t0, t2

    srli t2, t1, 7      # bit7
    andi t2, t2, 1
    add  t0, t0, t2

    andi a0, t0, 1      # return total & 1
    ret
    .size _Z6paritym, .-_Z6paritym

