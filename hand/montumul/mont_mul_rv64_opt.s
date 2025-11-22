.text
.globl _Z8mont_mulmmjjm
.type _Z8mont_mulmmjjm, @function
_Z8mont_mulmmjjm:
    # Arguments:
    # a0: c1 (rdi)
    # a1: np (rsi)
    # a2: ml (rdx)
    # a3: mh (rcx)
    # a4: c0 (r8)

    # 3  shlq 32, rcx
    slli a3, a3, 32

    # 4  movl edx, edx
    zext.w a2, a2

    # 5  xorq rdx, rcx
    xor a3, a3, a2      # rcx = rcx ^ rdx

    # 6  movq rcx, rax
    mv t0, a3           # rax = rcx

    # 7  mulq rsi
    # rdx:rax = rax * rsi
    # rax (t0) * rsi (a1)
    mulhu a2, t0, a1    # rdx (a2) = high part
    mul t0, t0, a1      # rax (t0) = low part

    # 8  addq r8, rdi
    add a0, a0, a4      # rdi += c0
    sltu t1, a0, a4     # t1 = carry

    # 9  adcq 0, rdx
    add a2, a2, t1      # rdx += carry

    # 10 addq rdi, rax
    add t0, t0, a0      # rax += rdi
    sltu t3, t0, a0     # t3 = carry

    # 11 adcq 0, rdx
    add a2, a2, t3      # rdx += carry

    # 12 movq rdx, r8
    mv a4, a2           # r8 = rdx

    # 13 movq rax, rdi
    mv a0, t0           # rdi = rax

    ret
