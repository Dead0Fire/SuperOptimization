  .text
  .globl _Z3p19iii
  .type _Z3p19iii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    90 bytes

# Text                    #  Line  RIP       Bytes  Opcode            
._Z3p19iii:               #        0x400656  0      OPC=<label>       
  pushq %rbp              #  1     0x400656  1      OPC=pushq_r64_1   
  movq %rsp, %rbp         #  2     0x400657  3      OPC=movq_r64_r64  
  movl %edi, -0x24(%rbp)  #  3     0x40065a  3      OPC=movl_m32_r32  
  movl %esi, -0x28(%rbp)  #  4     0x40065d  3      OPC=movl_m32_r32  
  movl %edx, -0x2c(%rbp)  #  5     0x400660  3      OPC=movl_m32_r32  
  movl -0x2c(%rbp), %eax  #  6     0x400663  3      OPC=movl_r32_m32  
  movl -0x24(%rbp), %edx  #  7     0x400666  3      OPC=movl_r32_m32  
  movl %eax, %ecx         #  8     0x400669  2      OPC=movl_r32_r32  
  sarl %cl, %edx          #  9     0x40066b  2      OPC=sarl_r32_cl   
  movl %edx, %eax         #  10    0x40066d  2      OPC=movl_r32_r32  
  movl %eax, -0x14(%rbp)  #  11    0x40066f  3      OPC=movl_m32_r32  
  movl -0x24(%rbp), %eax  #  12    0x400672  3      OPC=movl_r32_m32  
  xorl -0x14(%rbp), %eax  #  13    0x400675  3      OPC=xorl_r32_m32  
  movl %eax, -0x10(%rbp)  #  14    0x400678  3      OPC=movl_m32_r32  
  movl -0x10(%rbp), %eax  #  15    0x40067b  3      OPC=movl_r32_m32  
  andl -0x28(%rbp), %eax  #  16    0x40067e  3      OPC=andl_r32_m32  
  movl %eax, -0xc(%rbp)   #  17    0x400681  3      OPC=movl_m32_r32  
  movl -0x2c(%rbp), %eax  #  18    0x400684  3      OPC=movl_r32_m32  
  movl -0xc(%rbp), %edx   #  19    0x400687  3      OPC=movl_r32_m32  
  movl %eax, %ecx         #  20    0x40068a  2      OPC=movl_r32_r32  
  shll %cl, %edx          #  21    0x40068c  2      OPC=shll_r32_cl   
  movl %edx, %eax         #  22    0x40068e  2      OPC=movl_r32_r32  
  movl %eax, -0x8(%rbp)   #  23    0x400690  3      OPC=movl_m32_r32  
  movl -0x8(%rbp), %eax   #  24    0x400693  3      OPC=movl_r32_m32  
  xorl -0xc(%rbp), %eax   #  25    0x400696  3      OPC=xorl_r32_m32  
  movl %eax, -0x4(%rbp)   #  26    0x400699  3      OPC=movl_m32_r32  
  movl -0x4(%rbp), %eax   #  27    0x40069c  3      OPC=movl_r32_m32  
  xorl -0x24(%rbp), %eax  #  28    0x40069f  3      OPC=xorl_r32_m32  
  popq %rbp               #  29    0x4006a2  1      OPC=popq_r64_1    
  retq                    #  30    0x4006a3  1      OPC=retq          
  nop                     #  31    0x4006a4  1      OPC=nop           
  nop                     #  32    0x4006a5  1      OPC=nop           
  nop                     #  33    0x4006a6  1      OPC=nop           
  nop                     #  34    0x4006a7  1      OPC=nop           
  nop                     #  35    0x4006a8  1      OPC=nop           
  nop                     #  36    0x4006a9  1      OPC=nop           
  nop                     #  37    0x4006aa  1      OPC=nop           
  nop                     #  38    0x4006ab  1      OPC=nop           
  nop                     #  39    0x4006ac  1      OPC=nop           
  nop                     #  40    0x4006ad  1      OPC=nop           
  xchgw %ax, %ax          #  41    0x4006ae  2      OPC=xchgw_r16_ax  
                                                                      
.size _Z3p19iii, .-_Z3p19iii

