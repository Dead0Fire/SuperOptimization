  .text
  .globl _Z3p21iiii
  .type _Z3p21iiii, @function

#! file-offset 0x696
#! rip-offset  0x400696
#! capacity    106 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p21iiii:              #        0x400696  0      OPC=<label>        
  pushq %rbp              #  1     0x400696  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400697  3      OPC=movq_r64_r64   
  movl %edi, -0x24(%rbp)  #  3     0x40069a  3      OPC=movl_m32_r32   
  movl %esi, -0x28(%rbp)  #  4     0x40069d  3      OPC=movl_m32_r32   
  movl %edx, -0x2c(%rbp)  #  5     0x4006a0  3      OPC=movl_m32_r32   
  movl %ecx, -0x30(%rbp)  #  6     0x4006a3  3      OPC=movl_m32_r32   
  movl -0x24(%rbp), %eax  #  7     0x4006a6  3      OPC=movl_r32_m32   
  cmpl -0x30(%rbp), %eax  #  8     0x4006a9  3      OPC=cmpl_r32_m32   
  sete %al                #  9     0x4006ac  3      OPC=sete_r8        
  movzbl %al, %eax        #  10    0x4006af  3      OPC=movzbl_r32_r8  
  negl %eax               #  11    0x4006b2  2      OPC=negl_r32       
  movl %eax, -0x1c(%rbp)  #  12    0x4006b4  3      OPC=movl_m32_r32   
  movl -0x28(%rbp), %eax  #  13    0x4006b7  3      OPC=movl_r32_m32   
  xorl -0x30(%rbp), %eax  #  14    0x4006ba  3      OPC=xorl_r32_m32   
  movl %eax, -0x18(%rbp)  #  15    0x4006bd  3      OPC=movl_m32_r32   
  movl -0x24(%rbp), %eax  #  16    0x4006c0  3      OPC=movl_r32_m32   
  cmpl -0x28(%rbp), %eax  #  17    0x4006c3  3      OPC=cmpl_r32_m32   
  sete %al                #  18    0x4006c6  3      OPC=sete_r8        
  movzbl %al, %eax        #  19    0x4006c9  3      OPC=movzbl_r32_r8  
  negl %eax               #  20    0x4006cc  2      OPC=negl_r32       
  movl %eax, -0x14(%rbp)  #  21    0x4006ce  3      OPC=movl_m32_r32   
  movl -0x2c(%rbp), %eax  #  22    0x4006d1  3      OPC=movl_r32_m32   
  xorl -0x30(%rbp), %eax  #  23    0x4006d4  3      OPC=xorl_r32_m32   
  movl %eax, -0x10(%rbp)  #  24    0x4006d7  3      OPC=movl_m32_r32   
  movl -0x1c(%rbp), %eax  #  25    0x4006da  3      OPC=movl_r32_m32   
  andl -0x18(%rbp), %eax  #  26    0x4006dd  3      OPC=andl_r32_m32   
  movl %eax, -0xc(%rbp)   #  27    0x4006e0  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  28    0x4006e3  3      OPC=movl_r32_m32   
  andl -0x10(%rbp), %eax  #  29    0x4006e6  3      OPC=andl_r32_m32   
  movl %eax, -0x8(%rbp)   #  30    0x4006e9  3      OPC=movl_m32_r32   
  movl -0xc(%rbp), %eax   #  31    0x4006ec  3      OPC=movl_r32_m32   
  xorl -0x8(%rbp), %eax   #  32    0x4006ef  3      OPC=xorl_r32_m32   
  movl %eax, -0x4(%rbp)   #  33    0x4006f2  3      OPC=movl_m32_r32   
  movl -0x4(%rbp), %eax   #  34    0x4006f5  3      OPC=movl_r32_m32   
  xorl -0x30(%rbp), %eax  #  35    0x4006f8  3      OPC=xorl_r32_m32   
  popq %rbp               #  36    0x4006fb  1      OPC=popq_r64_1     
  retq                    #  37    0x4006fc  1      OPC=retq           
  nop                     #  38    0x4006fd  1      OPC=nop            
  nop                     #  39    0x4006fe  1      OPC=nop            
  nop                     #  40    0x4006ff  1      OPC=nop            
                                                                       
.size _Z3p21iiii, .-_Z3p21iiii

