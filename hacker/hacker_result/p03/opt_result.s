  .text
  .globl _Z3p03i
  .type _Z3p03i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text               #  Line  RIP       Bytes  Opcode             
._Z3p03i:            #        0x400646  0      OPC=<label>        
  movsbl %dil, %eax  #  1     0x400646  4      OPC=movsbl_r32_r8  
  blsiq %rdi, %rax   #  2     0x40064a  5      OPC=blsiq_r64_r64  
  retq               #  3     0x40064f  1      OPC=retq           
                                                                  
.size _Z3p03i, .-_Z3p03i
