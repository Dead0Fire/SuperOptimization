  .text
  .globl _Z3p06i
  .type _Z3p06i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text             #  Line  RIP       Bytes  Opcode                
._Z3p06i:          #        0x400646  0      OPC=<label>           
  movl $0x1, %eax  #  1     0x400646  6      OPC=movl_r32_imm32_1  
  xaddw %ax, %di   #  2     0x40064c  4      OPC=xaddw_r16_r16     
  orl %edi, %eax   #  3     0x400650  2      OPC=orl_r32_r32       
  retq             #  4     0x400652  1      OPC=retq              
                                                                   
.size _Z3p06i, .-_Z3p06i
