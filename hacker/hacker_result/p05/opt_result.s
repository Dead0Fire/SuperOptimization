  .text
  .globl _Z3p05i
  .type _Z3p05i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                      #  Line  RIP       Bytes  Opcode            
._Z3p05i:                   #        0x400646  0      OPC=<label>       
  leaq -0x1(,%rdi,1), %rax  #  1     0x400646  8      OPC=leaq_r64_m64  
  orl %edi, %eax            #  2     0x40064e  2      OPC=orl_r32_r32   
  retq                      #  3     0x400650  1      OPC=retq          
                                                                        
.size _Z3p05i, .-_Z3p05i
