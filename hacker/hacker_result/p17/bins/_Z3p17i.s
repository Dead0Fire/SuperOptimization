  .text
  .globl _Z3p17i
  .type _Z3p17i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p17i:                 #        0x400646  0      OPC=<label>        
  pushq %rbp              #  1     0x400646  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400647  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40064a  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  4     0x40064d  3      OPC=movl_r32_m32   
  subl $0x1, %eax         #  5     0x400650  3      OPC=subl_r32_imm8  
  movl %eax, -0xc(%rbp)   #  6     0x400653  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  7     0x400656  3      OPC=movl_r32_m32   
  orl -0xc(%rbp), %eax    #  8     0x400659  3      OPC=orl_r32_m32    
  movl %eax, -0x8(%rbp)   #  9     0x40065c  3      OPC=movl_m32_r32   
  movl -0x8(%rbp), %eax   #  10    0x40065f  3      OPC=movl_r32_m32   
  addl $0x1, %eax         #  11    0x400662  3      OPC=addl_r32_imm8  
  movl %eax, -0x4(%rbp)   #  12    0x400665  3      OPC=movl_m32_r32   
  movl -0x4(%rbp), %eax   #  13    0x400668  3      OPC=movl_r32_m32   
  andl -0x14(%rbp), %eax  #  14    0x40066b  3      OPC=andl_r32_m32   
  popq %rbp               #  15    0x40066e  1      OPC=popq_r64_1     
  retq                    #  16    0x40066f  1      OPC=retq           
                                                                       
.size _Z3p17i, .-_Z3p17i

