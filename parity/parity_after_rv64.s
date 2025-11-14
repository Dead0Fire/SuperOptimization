    .text
    .globl _Z6paritym
    .type  _Z6paritym, @function
# STOKE 风格：仍然只看低8位，但合并/调整累加顺序，减少中间依赖
_Z6paritym:
    mv   t0, a0            # t0 = x

    srli t1, t0, 1         # (x>>1)&1
    andi t1, t1, 1

    srli t2, t0, 2         # (x>>2)&1
    andi t2, t2, 1
    add  t1, t1, t2

    andi t3, t0, 1         # bit0
    add  t1, t1, t3

    srli t2, t0, 3         # bit3
    andi t2, t2, 1
    add  t1, t1, t2

    srli t2, t0, 4         # bit4
    andi t2, t2, 1
    add  t1, t1, t2

    srli t2, t0, 5         # bit5
    andi t2, t2, 1
    add  t1, t1, t2

    srli t2, t0, 6         # bit6
    andi t2, t2, 1
    add  t1, t1, t2

    srli t2, t0, 7         # bit7
    andi t2, t2, 1
    add  t1, t1, t2

    andi a0, t1, 1         # return sum & 1
    ret
    .size _Z6paritym, .-_Z6paritym

