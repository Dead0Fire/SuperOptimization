  .text
  .globl _Z3p17i
  .type _Z3p17i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                    #  Line  RIP       Bytes  Opcode                 
._Z3p17i:                 #        0x400646  0      OPC=<label>            
  negl %edi               #  1     0x400646  2      OPC=negl_r32           
  movl $0x1, %eax         #  2     0x400648  6      OPC=movl_r32_imm32_1   
  pdepq %rdi, %rax, %r11  #  3     0x40064e  5      OPC=pdepq_r64_r64_r64  
  subq %rdi, %r11         #  4     0x400653  3      OPC=subq_r64_r64_1     
  blsrl %r11d, %esi       #  5     0x400656  5      OPC=blsrl_r32_r32      
  xchgl %eax, %esi        #  6     0x40065b  1      OPC=xchgl_r32_eax      
  retq                    #  7     0x40065c  1      OPC=retq               
                                                                           
.size _Z3p17i, .-_Z3p17i
