  .text
  .globl _Z3p01i
  .type _Z3p01i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                     #  Line  RIP       Bytes  Opcode                
._Z3p01i:                  #        0x400646  0      OPC=<label>           
  movl $0xfffffffb, %r11d  #  1     0x400646  6      OPC=movl_r32_imm32    
  xorq %rax, %rax          #  2     0x40064c  3      OPC=xorq_r64_r64      
  cmpxchgl %r11d, %edi     #  3     0x40064f  4      OPC=cmpxchgl_r32_r32  
  blsrl %eax, %r9d         #  4     0x400653  5      OPC=blsrl_r32_r32     
  blsrl %eax, %eax         #  5     0x400658  5      OPC=blsrl_r32_r32     
  cmpl %edi, %r9d          #  6     0x40065d  3      OPC=cmpl_r32_r32      
  rorq $0x1, %r11          #  7     0x400660  3      OPC=rorq_r64_one      
  cmovnbeq %rax, %rax      #  8     0x400663  4      OPC=cmovnbeq_r64_r64  
  retq                     #  9     0x400667  1      OPC=retq              
                                                                           
.size _Z3p01i, .-_Z3p01i