  .text
  .globl _Z3p23i
  .type _Z3p23i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    170 bytes

# Text                #  Line  RIP       Bytes  Opcode               
._Z3p23i:             #        0x400646  0      OPC=<label>          
  popcntl %edi, %edx  #  1     0x400646  4      OPC=popcntl_r32_r32  
  movzbq %dl, %rax    #  2     0x40064a  4      OPC=movzbq_r64_r8    
  retq                #  3     0x40064e  1      OPC=retq             
                                                                     
.size _Z3p23i, .-_Z3p23i
