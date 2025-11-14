  .text
  .globl _Z3p09i
  .type _Z3p09i, @function

#! file-offset 0x666
#! rip-offset  0x400666
#! capacity    42 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p09i:                 #        0x400666  0      OPC=<label>        
  pushq %rbp              #  1     0x400666  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400667  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40066a  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  4     0x40066d  3      OPC=movl_r32_m32   
  sarl $0x1f, %eax        #  5     0x400670  3      OPC=sarl_r32_imm8  
  movl %eax, -0x8(%rbp)   #  6     0x400673  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  7     0x400676  3      OPC=movl_r32_m32   
  xorl -0x8(%rbp), %eax   #  8     0x400679  3      OPC=xorl_r32_m32   
  movl %eax, -0x4(%rbp)   #  9     0x40067c  3      OPC=movl_m32_r32   
  movl -0x4(%rbp), %eax   #  10    0x40067f  3      OPC=movl_r32_m32   
  subl -0x8(%rbp), %eax   #  11    0x400682  3      OPC=subl_r32_m32   
  popq %rbp               #  12    0x400685  1      OPC=popq_r64_1     
  retq                    #  13    0x400686  1      OPC=retq           
  nop                     #  14    0x400687  1      OPC=nop            
  nop                     #  15    0x400688  1      OPC=nop            
  nop                     #  16    0x400689  1      OPC=nop            
  nop                     #  17    0x40068a  1      OPC=nop            
  nop                     #  18    0x40068b  1      OPC=nop            
  nop                     #  19    0x40068c  1      OPC=nop            
  nop                     #  20    0x40068d  1      OPC=nop            
  nop                     #  21    0x40068e  1      OPC=nop            
  nop                     #  22    0x40068f  1      OPC=nop            
                                                                       
.size _Z3p09i, .-_Z3p09i

