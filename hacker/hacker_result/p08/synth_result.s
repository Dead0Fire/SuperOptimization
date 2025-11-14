  .text
  .globl _Z3p08i
  .type _Z3p08i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                   #  Line  RIP       Bytes  Opcode                 
._Z3p08i:                #        0x400646  0      OPC=<label>            
  tzcntl %edi, %r9d      #  1     0x400646  5      OPC=tzcntl_r32_r32     
  movswl %r9w, %eax      #  2     0x40064b  4      OPC=movswl_r32_r16     
  subq $0x10, %rax       #  3     0x40064f  6      OPC=subq_rax_imm32     
  sarb $0xfb, %al        #  4     0x400655  3      OPC=sarb_r8_imm8       
  bzhiq %r9, %rax, %r10  #  5     0x400658  5      OPC=bzhiq_r64_r64_r64  
  orl $0x3, %eax         #  6     0x40065d  5      OPC=orl_eax_imm32      
  cltq                   #  7     0x400662  2      OPC=cltq               
  subb $0x1, %ah         #  8     0x400664  3      OPC=subb_rh_imm8       
  cmovsl %r10d, %eax     #  9     0x400667  4      OPC=cmovsl_r32_r32     
  retq                   #  10    0x40066b  1      OPC=retq               
                                                                          
.size _Z3p08i, .-_Z3p08i
