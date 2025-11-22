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

    # 3  movq rsi, r9
    mv t0, a1           # t0 = np

    # 4  movl ecx, ecx
    zext.w a3, a3       # a3 = mh (zero extended)

    # 5  shrq 32, rsi
    srli a1, a1, 32     # a1 = np >> 32

    # 6  andl 0xffffffff, r9d
    zext.w t0, t0       # t0 = np & 0xffffffff

    # 7  movq rcx, rax
    mv t1, a3           # t1 = mh

    # 8  movl edx, edx
    zext.w a2, a2       # a2 = ml

    # 9  imulq r9, rax
    mul t1, t1, t0      # t1 = mh * np_low

    # 10 imulq rdx, r9
    mul t0, a2, t0      # t0 = ml * np_low

    # 11 imulq rsi, rdx
    mul a2, a2, a1      # a2 = ml * np_high

    # 12 imulq rsi, rcx
    mul a3, a3, a1      # a3 = mh * np_high

    # 13 addq rdx, rax
    add t2, t1, a2      # t2 = rax + rdx
    sltu t3, t2, t1     # carry check
    mv t1, t2           # rax = t2

    # 14 jae .L0
    beqz t3, .L0

    # 15 movabsq 0x100000000, rdx
    li a2, 0x100000000

    # 16 addq rdx, rcx
    add a3, a3, a2      # rcx += 0x100000000

.L0:
    # 17 .L0:
    # 18 movq rax, rsi
    mv a1, t1           # rsi = rax

    # 19 movq rax, rdx
    mv a2, t1           # rdx = rax

    # 20 shrq 32, rsi
    srli a1, a1, 32     # rsi = rax >> 32

    # 21 salq 32, rdx
    slli a2, a2, 32     # rdx = rax << 32

    # 22 addq rsi, rcx
    add a3, a3, a1      # rcx += rsi

    # 23 addq r9, rdx
    add a2, a2, t0      # rdx += r9
    sltu t4, a2, t0     # carry out

    # 24 adcq 0, rcx
    add a3, a3, t4      # rcx += carry

    # 25 addq r8, rdx
    add a2, a2, a4      # rdx += c0
    sltu t4, a2, a4     # carry out

    # 26 adcq 0, rcx
    add a3, a3, t4      # rcx += carry

    # 27 addq rdi, rdx
    add a2, a2, a0      # rdx += c1
    sltu t4, a2, a0     # carry out

    # 28 adcq 0, rcx
    add a3, a3, t4      # rcx += carry

    # 29 movq rcx, r8
    mv a4, a3           # r8 = rcx

    # 30 movq rdx, rdi
    mv a0, a2           # rdi = rdx

    # Return value is c0 ^ c1 (based on C++ code, but assembly doesn't show it explicitly returning anything other than updating registers. 
    # However, the C++ code says `return c0 ^ c1;`.
    # The x86 assembly ends with updating r8 (c0) and rdi (c1).
    # The calling convention expects return value in rax (a0).
    # Let's check the C++ code again: `return c0 ^ c1;`
    # The provided gcc.s does NOT have the XOR and return. It seems to be an inlined fragment or just the calculation part.
    # But wait, the main.cc calls it as `extern void mont_mul(...)`.
    # Ah, the main.cc signature is `void mont_mul`, but mont_mul.cc has `uint64_t mont_mul`.
    # The gcc.s provided ends with updating registers but no ret (it's a fragment?).
    # Wait, the provided gcc.s has no `ret`.
    # Assuming it's void for now based on main.cc signature.
    
    ret
