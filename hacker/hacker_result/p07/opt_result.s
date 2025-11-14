  .text
  .globl _Z3p07i
  .type _Z3p07i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text              #  Line  RIP       Bytes  Opcode              
._Z3p07i:           #        0x400646  0      OPC=<label>         
  movswl %di, %eax  #  1     0x400646  3      OPC=movswl_r32_r16  
  notl %eax         #  2     0x400649  2      OPC=notl_r32        
  blsil %eax, %eax  #  3     0x40064b  5      OPC=blsil_r32_r32   
  retq              #  4     0x400650  1      OPC=retq            
                                                                  
.size _Z3p07i, .-_Z3p07i
