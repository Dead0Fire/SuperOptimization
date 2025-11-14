  .text
  .globl _Z3p20i
  .type _Z3p20i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    74 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p20i:                 #        0x400646  0      OPC=<label>        
  pushq %rbp              #  1     0x400646  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400647  3      OPC=movq_r64_r64   
  movl %edi, -0x24(%rbp)  #  3     0x40064a  3      OPC=movl_m32_r32   
  movl -0x24(%rbp), %eax  #  4     0x40064d  3      OPC=movl_r32_m32   
  negl %eax               #  5     0x400650  2      OPC=negl_r32       
  movl %eax, -0x18(%rbp)  #  6     0x400652  3      OPC=movl_m32_r32   
  movl -0x24(%rbp), %eax  #  7     0x400655  3      OPC=movl_r32_m32   
  andl -0x18(%rbp), %eax  #  8     0x400658  3      OPC=andl_r32_m32   
  movl %eax, -0x14(%rbp)  #  9     0x40065b  3      OPC=movl_m32_r32   
  movl -0x24(%rbp), %edx  #  10    0x40065e  3      OPC=movl_r32_m32   
  movl -0x14(%rbp), %eax  #  11    0x400661  3      OPC=movl_r32_m32   
  addl %edx, %eax         #  12    0x400664  2      OPC=addl_r32_r32   
  movl %eax, -0x10(%rbp)  #  13    0x400666  3      OPC=movl_m32_r32   
  movl -0x24(%rbp), %eax  #  14    0x400669  3      OPC=movl_r32_m32   
  xorl -0x14(%rbp), %eax  #  15    0x40066c  3      OPC=xorl_r32_m32   
  movl %eax, -0xc(%rbp)   #  16    0x40066f  3      OPC=movl_m32_r32   
  movl -0xc(%rbp), %eax   #  17    0x400672  3      OPC=movl_r32_m32   
  sarl $0x2, %eax         #  18    0x400675  3      OPC=sarl_r32_imm8  
  movl %eax, -0x8(%rbp)   #  19    0x400678  3      OPC=movl_m32_r32   
  movl -0x8(%rbp), %eax   #  20    0x40067b  3      OPC=movl_r32_m32   
  cltd                    #  21    0x40067e  1      OPC=cltd           
  idivl -0x14(%rbp)       #  22    0x40067f  3      OPC=idivl_m32      
  movl %eax, -0x4(%rbp)   #  23    0x400682  3      OPC=movl_m32_r32   
  movl -0x10(%rbp), %eax  #  24    0x400685  3      OPC=movl_r32_m32   
  orl -0x4(%rbp), %eax    #  25    0x400688  3      OPC=orl_r32_m32    
  popq %rbp               #  26    0x40068b  1      OPC=popq_r64_1     
  retq                    #  27    0x40068c  1      OPC=retq           
  nop                     #  28    0x40068d  1      OPC=nop            
  nop                     #  29    0x40068e  1      OPC=nop            
  nop                     #  30    0x40068f  1      OPC=nop            
                                                                       
.size _Z3p20i, .-_Z3p20i

