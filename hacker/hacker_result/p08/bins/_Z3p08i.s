  .text
  .globl _Z3p08i
  .type _Z3p08i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p08i:                 #        0x400646  0      OPC=<label>        
  pushq %rbp              #  1     0x400646  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400647  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40064a  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  4     0x40064d  3      OPC=movl_r32_m32   
  subl $0x1, %eax         #  5     0x400650  3      OPC=subl_r32_imm8  
  movl %eax, -0x8(%rbp)   #  6     0x400653  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  7     0x400656  3      OPC=movl_r32_m32   
  notl %eax               #  8     0x400659  2      OPC=notl_r32       
  movl %eax, -0x4(%rbp)   #  9     0x40065b  3      OPC=movl_m32_r32   
  movl -0x8(%rbp), %eax   #  10    0x40065e  3      OPC=movl_r32_m32   
  andl -0x4(%rbp), %eax   #  11    0x400661  3      OPC=andl_r32_m32   
  popq %rbp               #  12    0x400664  1      OPC=popq_r64_1     
  retq                    #  13    0x400665  1      OPC=retq           
  nop                     #  14    0x400666  1      OPC=nop            
  nop                     #  15    0x400667  1      OPC=nop            
  nop                     #  16    0x400668  1      OPC=nop            
  nop                     #  17    0x400669  1      OPC=nop            
  nop                     #  18    0x40066a  1      OPC=nop            
  nop                     #  19    0x40066b  1      OPC=nop            
  nop                     #  20    0x40066c  1      OPC=nop            
  nop                     #  21    0x40066d  1      OPC=nop            
  nop                     #  22    0x40066e  1      OPC=nop            
  nop                     #  23    0x40066f  1      OPC=nop            
                                                                       
.size _Z3p08i, .-_Z3p08i

