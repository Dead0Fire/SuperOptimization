  .text
  .globl _Z3p08i
  .type _Z3p08i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                    #  Line  RIP       Bytes  Opcode                 
._Z3p08i:                 #        0x400646  0      OPC=<label>            
  tzcntq %rdi, %rdx       #  1     0x400646  5      OPC=tzcntq_r64_r64     
  notw %di                #  2     0x40064b  3      OPC=notw_r16           
  bzhil %edx, %edi, %eax  #  3     0x40064e  5      OPC=bzhil_r32_r32_r32  
  retq                    #  4     0x400653  1      OPC=retq               
                                                                           
.size _Z3p08i, .-_Z3p08i
