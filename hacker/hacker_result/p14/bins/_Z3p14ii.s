  .text
  .globl _Z3p14ii
  .type _Z3p14ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                    #  Line  RIP       Bytes  Opcode            
._Z3p14ii:                #        0x400656  0      OPC=<label>       
  pushq %rbp              #  1     0x400656  1      OPC=pushq_r64_1   
  movq %rsp, %rbp         #  2     0x400657  3      OPC=movq_r64_r64  
  movl %edi, -0x14(%rbp)  #  3     0x40065a  3      OPC=movl_m32_r32  
  movl %esi, -0x18(%rbp)  #  4     0x40065d  3      OPC=movl_m32_r32  
  movl -0x14(%rbp), %eax  #  5     0x400660  3      OPC=movl_r32_m32  
  andl -0x18(%rbp), %eax  #  6     0x400663  3      OPC=andl_r32_m32  
  movl %eax, -0xc(%rbp)   #  7     0x400666  3      OPC=movl_m32_r32  
  movl -0x14(%rbp), %eax  #  8     0x400669  3      OPC=movl_r32_m32  
  xorl -0x18(%rbp), %eax  #  9     0x40066c  3      OPC=xorl_r32_m32  
  movl %eax, -0x8(%rbp)   #  10    0x40066f  3      OPC=movl_m32_r32  
  movl -0x8(%rbp), %eax   #  11    0x400672  3      OPC=movl_r32_m32  
  sarl $0x1, %eax         #  12    0x400675  2      OPC=sarl_r32_one  
  movl %eax, -0x4(%rbp)   #  13    0x400677  3      OPC=movl_m32_r32  
  movl -0xc(%rbp), %edx   #  14    0x40067a  3      OPC=movl_r32_m32  
  movl -0x4(%rbp), %eax   #  15    0x40067d  3      OPC=movl_r32_m32  
  addl %edx, %eax         #  16    0x400680  2      OPC=addl_r32_r32  
  popq %rbp               #  17    0x400682  1      OPC=popq_r64_1    
  retq                    #  18    0x400683  1      OPC=retq          
  nop                     #  19    0x400684  1      OPC=nop           
  nop                     #  20    0x400685  1      OPC=nop           
  nop                     #  21    0x400686  1      OPC=nop           
  nop                     #  22    0x400687  1      OPC=nop           
  nop                     #  23    0x400688  1      OPC=nop           
  nop                     #  24    0x400689  1      OPC=nop           
  nop                     #  25    0x40068a  1      OPC=nop           
  nop                     #  26    0x40068b  1      OPC=nop           
  nop                     #  27    0x40068c  1      OPC=nop           
  nop                     #  28    0x40068d  1      OPC=nop           
  xchgw %ax, %ax          #  29    0x40068e  2      OPC=xchgw_r16_ax  
                                                                      
.size _Z3p14ii, .-_Z3p14ii

