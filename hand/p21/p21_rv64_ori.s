.text
.globl _Z3p21iiii
.type _Z3p21iiii, @function
_Z3p21iiii:
    # Arguments:
    # a0: x (edi)
    # a1: a (esi)
    # a2: b (edx)
    # a3: c (ecx)
    # Return: eax

    # 3  movl edx, eax
    mv t0, a2           # t0 = b (eax in gcc.s context seems to be used as temp, but here it's b initially?)
                        # Wait, in gcc.s:
                        # 3 movl edx, eax  -> eax = b
                        # 4 xorl edx, edx  -> edx = 0
                        # 5 xorl ecx, eax  -> eax = b ^ c
                        # 6 cmpl esi, edi  -> cmp x, a
                        # 7 sete dl        -> dl = (x == a)
                        # 8 negl edx       -> edx = - (x == a)
                        # 9 andl edx, eax  -> eax = (b ^ c) & (-(x == a))
                        # 10 xorl edx, edx -> edx = 0
                        # 11 xorl ecx, eax -> eax = ((b ^ c) & (-(x == a))) ^ c
                        # ... wait, let's trace carefully.

    # Let's map registers from x86 to RISC-V
    # edi -> a0 (x)
    # esi -> a1 (a)
    # edx -> a2 (b)
    # ecx -> a3 (c)
    # eax -> return value

    # 3  movl edx, eax
    mv t0, a2           # t0 = b (eax)

    # 4  xorl edx, edx
    li t1, 0            # t1 = 0 (edx)

    # 5  xorl ecx, eax
    xor t0, a3, t0      # t0 = c ^ b (eax)

    # 6  cmpl esi, edi
    # 7  sete dl
    # 8  negl edx
    # dl = (x == a) ? 1 : 0
    # edx = -dl
    sub t2, a0, a1      # t2 = x - a
    seqz t1, t2         # t1 = (x == a) ? 1 : 0
    neg t1, t1          # t1 = - (x == a)

    # 9  andl edx, eax
    and t0, t1, t0      # t0 = (-(x==a)) & (c^b)

    # 10 xorl edx, edx
    li t1, 0            # t1 = 0 (edx)

    # 11 xorl ecx, eax
    xor t0, a3, t0      # t0 = c ^ ((-(x==a)) & (c^b))

    # 12 cmpl ecx, edi
    # 13 sete dl
    # 14 xorl ecx, esi
    # 15 negl edx
    # 16 andl esi, edx
    # 17 xorl edx, eax

    # Let's re-read gcc.s logic carefully.
    # 11 xorl ecx, eax  -> eax = eax ^ ecx.  Wait, src, dest. xorl ecx, eax means eax = eax ^ ecx.
    # So at line 11: eax = ( (b^c) & (-(x==a)) ) ^ c.

    # 12 cmpl ecx, edi  -> cmp x, c
    # 13 sete dl        -> dl = (x == c)
    # 14 xorl ecx, esi  -> esi = a ^ c
    # 15 negl edx       -> edx = -(x == c)
    # 16 andl esi, edx  -> edx = (a ^ c) & (-(x == c))
    # 17 xorl edx, eax  -> eax = eax ^ edx
    # Return eax.

    # Implementation:
    # Current state:
    # t0 = ((b^c) & (-(x==a))) ^ c  (matches line 11 result)
    # a0=x, a1=a, a2=b, a3=c

    # 12 cmpl ecx, edi
    # 13 sete dl
    # 14 xorl ecx, esi
    # 15 negl edx
    sub t3, a0, a3      # t3 = x - c
    seqz t4, t3         # t4 = (x == c)
    neg t4, t4          # t4 = -(x == c) (edx)

    # 14 xorl ecx, esi
    xor t5, a1, a3      # t5 = a ^ c (esi)

    # 16 andl esi, edx
    and t4, t5, t4      # t4 = (a^c) & (-(x==c)) (edx)

    # 17 xorl edx, eax
    xor a0, t4, t0      # a0 = t4 ^ t0 (return value)

    ret
