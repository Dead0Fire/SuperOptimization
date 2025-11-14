  .text
  .globl _Z3p04i
  .type _Z3p04i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                     #  Line  RIP       Bytes  Opcode                  
._Z3p04i:                  #        0x400646  0      OPC=<label>             
  rorxq $0xfa, %rdi, %rax  #  1     0x400646  6      OPC=rorxq_r64_r64_imm8  
  blsmskl %edi, %eax       #  2     0x40064c  5      OPC=blsmskl_r32_r32     
  retq                     #  3     0x400651  1      OPC=retq                
                                                                             
.size _Z3p04i, .-_Z3p04i
