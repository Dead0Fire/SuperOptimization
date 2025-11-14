  .text
  .globl _Z3p13i
  .type _Z3p13i, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    42 bytes

# Text             #  Line  RIP       Bytes  Opcode              
._Z3p13i:          #        0x400656  0      OPC=<label>         
  xorq %rax, %rax  #  1     0x400656  3      OPC=xorq_r64_r64    
  addb %al, %al    #  2     0x400659  2      OPC=addb_r8_r8_1    
  cbtw             #  3     0x40065b  2      OPC=cbtw            
  cltq             #  4     0x40065d  2      OPC=cltq            
  mulb %al         #  5     0x40065f  2      OPC=mulb_r8         
  subq %rax, %rax  #  6     0x400661  3      OPC=subq_r64_r64_1  
  salb $0x1, %ah   #  7     0x400664  3      OPC=salb_rh_imm8    
  stc              #  8     0x400667  1      OPC=stc             
  sbbl $0x0, %eax  #  9     0x400668  5      OPC=sbbl_eax_imm32  
  retq             #  10    0x40066d  1      OPC=retq            
                                                                 
.size _Z3p13i, .-_Z3p13i
