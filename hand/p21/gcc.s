1  # gcc -O3
2
3  movl edx, eax
4  xorl edx, edx
5  xorl ecx, eax
6  cmpl esi, edi
7  sete dl
8  negl edx
9  andl edx, eax
10 xorl edx, edx
11 xorl ecx, eax
12 cmpl ecx, edi
13 sete dl
14 xorl ecx, esi
15 negl edx
16 andl esi, edx
17 xorl edx, eax
