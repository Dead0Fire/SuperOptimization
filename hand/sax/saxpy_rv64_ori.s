.text
.globl _Z5saxpyjPjS_i
.type _Z5saxpyjPjS_i, @function
_Z5saxpyjPjS_i:
    # Arguments:
    # a0: a (edi)
    # a1: x (rsi)
    # a2: y (rdx)
    # a3: i (ecx)

    # 3  movslq ecx, rcx
    sext.w a3, a3       # i = (long)i

    # 4  leaq (rsi,rcx,4), r8
    # r8 = x + i*4
    slli t0, a3, 2      # t0 = i * 4
    add t1, a1, t0      # t1 = x + i*4 (r8)

    # 5  leaq 1(rcx), r9
    # r9 = i + 1
    addi t2, a3, 1      # t2 = i + 1

    # 6  movl (r8), eax
    # eax = x[i]
    lw t3, 0(t1)        # t3 = x[i]

    # 7  imull edi, eax
    # eax = eax * a
    mulw t3, t3, a0     # t3 = x[i] * a

    # 8  addl (rdx,rcx,4), eax
    # eax += y[i]
    add t4, a2, t0      # t4 = y + i*4
    lw t5, 0(t4)        # t5 = y[i]
    addw t3, t3, t5     # t3 = x[i]*a + y[i]

    # 9  movl eax, (r8)
    # x[i] = eax
    sw t3, 0(t1)

    # 10 leaq (rsi,r9,4), r8
    # r8 = x + (i+1)*4
    slli t6, t2, 2      # t6 = (i+1)*4
    add t1, a1, t6      # t1 = x + (i+1)*4 (r8)

    # 11 movl (r8), eax
    # eax = x[i+1]
    lw t3, 0(t1)

    # 12 imull edi, eax
    mulw t3, t3, a0

    # 13 addl (rdx,r9,4), eax
    # eax += y[i+1]
    add t4, a2, t6      # t4 = y + (i+1)*4
    lw t5, 0(t4)
    addw t3, t3, t5

    # 16 movl eax, (r8)
    # x[i+1] = eax
    sw t3, 0(t1)

    # 14 leaq 2(rcx), r9
    # r9 = i + 2
    addi t2, a3, 2

    # 15 addq 3, rcx
    # rcx = i + 3
    addi a3, a3, 3

    # 17 leaq (rsi,r9,4), r8
    # r8 = x + (i+2)*4
    slli t6, t2, 2      # t6 = (i+2)*4
    add t1, a1, t6      # t1 = x + (i+2)*4

    # 18 movl (r8), eax
    lw t3, 0(t1)

    # 19 imull edi, eax
    mulw t3, t3, a0

    # 20 addl (rdx,r9,4), eax
    add t4, a2, t6      # t4 = y + (i+2)*4
    lw t5, 0(t4)
    addw t3, t3, t5

    # 21 movl eax, (r8)
    sw t3, 0(t1)

    # 22 leaq (rsi,rcx,4), rax
    # rax = x + (i+3)*4
    slli t0, a3, 2      # t0 = (i+3)*4
    add t1, a1, t0      # t1 = x + (i+3)*4

    # 23 imull (rax), edi
    # edi = x[i+3] * a
    lw t3, 0(t1)
    mulw a0, t3, a0     # a0 = x[i+3] * a (reusing a0/edi)

    # 24 addl (rdx,rcx,4), edi
    # edi += y[i+3]
    add t4, a2, t0      # t4 = y + (i+3)*4
    lw t5, 0(t4)
    addw a0, a0, t5

    # 25 movl edi, (rax)
    sw a0, 0(t1)

    ret
