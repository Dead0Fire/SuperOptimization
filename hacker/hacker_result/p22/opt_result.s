  .text
  .globl _Z3p22i
  .type _Z3p22i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    90 bytes

# Text                #  Line  RIP       Bytes  Opcode               
._Z3p22i:             #        0x400646  0      OPC=<label>          
  popcntl %edi, %eax  #  1     0x400646  4      OPC=popcntl_r32_r32  
  setpo %cl           #  2     0x40064a  3      OPC=setpo_r8         
  andb %cl, %al       #  3     0x40064d  2      OPC=andb_r8_r8_1     
  retq                #  4     0x40064f  1      OPC=retq             
                                                                     
.size _Z3p22i, .-_Z3p22i
