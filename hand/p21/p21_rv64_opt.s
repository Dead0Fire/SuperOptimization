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

    # 3  cmpl edi, ecx
    # 4  cmovel esi, ecx
    # if (x == c) c = a; else c = c;
    # In RISC-V:
    # if (x == c) a3 = a1
    beq a0, a3, .L_eq_c
    j .L_next_1
.L_eq_c:
    mv a3, a1
.L_next_1:

    # 5  xorl  edi, esi
    # This line in stoke.s seems weird: xorl edi, esi -> esi = esi ^ edi.
    # But wait, let's check the C++ code logic.
    # The C++ code is:
    # o1 = -(x==c); o2 = a^c; o3 = -(x==a); o4 = b^c;
    # o5 = o1 & o2; o6 = o3 & o4; o7 = o5 ^ o6; return o7 ^ c;
    # This is basically:
    # if (x==c) val = a^c; else val = 0;
    # if (x==a) val2 = b^c; else val2 = 0;
    # return val ^ val2 ^ c;
    #
    # If x==c, return (a^c) ^ c = a.
    # If x==a, return (b^c) ^ c = b.
    # If x!=a and x!=c, return c.
    # So it's: if (x==a) return b; if (x==c) return a; return c;
    # (Assuming a!=c).
    
    # Let's look at stoke.s again:
    # 3  cmpl edi, ecx      ; cmp x, c
    # 4  cmovel esi, ecx    ; if (x==c) ecx = a
    # 5  xorl  edi, esi     ; esi = a ^ x  <-- This seems unused later? Or is it?
    # 6  cmovel edx, ecx    ; if (x==a) ecx = b  <-- Wait, cmovel checks ZF.
    #                        ; ZF is set by `xorl edi, esi`.
    #                        ; If x == a, then x ^ a == 0, so ZF=1.
    #                        ; So if (x==a) ecx = b.
    # 7  movq  rcx, rax     ; rax = ecx
    
    # So the logic is:
    # if (x==c) ecx = a;
    # if (x==a) ecx = b;
    # return ecx;
    
    # This is extremely clever!
    # It uses the result of the first conditional move as the default for the second? No.
    # `cmovel esi, ecx` modifies ecx.
    # `xorl edi, esi` modifies esi (and flags).
    # `cmovel edx, ecx` modifies ecx based on flags from xor.
    
    # Let's translate this logic to RISC-V.
    
    # 3  cmpl edi, ecx
    # 4  cmovel esi, ecx
    # if (x == c) ecx = a
    beq a0, a3, .L_x_eq_c
    j .L_check_x_eq_a
.L_x_eq_c:
    mv a3, a1
.L_check_x_eq_a:

    # 5  xorl  edi, esi
    # 6  cmovel edx, ecx
    # if (x == a) ecx = b
    beq a0, a1, .L_x_eq_a
    j .L_done
.L_x_eq_a:
    mv a3, a2
.L_done:

    # 7  movq  rcx, rax
    mv a0, a3
    
    ret
