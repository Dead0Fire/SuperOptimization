1  # STOKE
2
3  movd     edi, xmm0
4  shufps   $0, xmm0, xmm0
5  movups   (rsi,rcx,4), xmm1
6  pmulll   xmm1, xmm0
7  movups   (rdx,rcx,4), xmm1
8  paddw    xmm1, xmm0
9  movups   xmm0, (rsi,rcx,4)
