  .text
  .globl _Z3p03i
  .type _Z3p03i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                    #  Line  RIP       Bytes  Opcode            
._Z3p03i:                 #        0x400646  0      OPC=<label>       
  pushq %rbp              #  1     0x400646  1      OPC=pushq_r64_1   
  movq %rsp, %rbp         #  2     0x400647  3      OPC=movq_r64_r64  
  movl %edi, -0x14(%rbp)  #  3     0x40064a  3      OPC=movl_m32_r32  
  movl -0x14(%rbp), %eax  #  4     0x40064d  3      OPC=movl_r32_m32  
  negl %eax               #  5     0x400650  2      OPC=negl_r32      
  movl %eax, -0x4(%rbp)   #  6     0x400652  3      OPC=movl_m32_r32  
  movl -0x14(%rbp), %eax  #  7     0x400655  3      OPC=movl_r32_m32  
  andl -0x4(%rbp), %eax   #  8     0x400658  3      OPC=andl_r32_m32  
  popq %rbp               #  9     0x40065b  1      OPC=popq_r64_1    
  retq                    #  10    0x40065c  1      OPC=retq          
  nop                     #  11    0x40065d  1      OPC=nop           
  nop                     #  12    0x40065e  1      OPC=nop           
  nop                     #  13    0x40065f  1      OPC=nop           
                                                                      
.size _Z3p03i, .-_Z3p03i

