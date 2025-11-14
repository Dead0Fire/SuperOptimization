  .text
  .globl _Z3p15ii
  .type _Z3p15ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text             #  Line  RIP       Bytes  Opcode              
._Z3p15ii:         #        0x400656  0      OPC=<label>         
  incq %rsi        #  1     0x400656  3      OPC=incq_r64        
  addl %edi, %esi  #  2     0x400659  2      OPC=addl_r32_r32_1  
  setl %dil        #  3     0x40065b  4      OPC=setl_r8         
  sarl $0x1, %edi  #  4     0x40065f  2      OPC=sarl_r32_one    
  rcrl $0x1, %esi  #  5     0x400661  2      OPC=rcrl_r32_one    
  movl %esi, %eax  #  6     0x400663  2      OPC=movl_r32_r32    
  retq             #  7     0x400665  1      OPC=retq            
                                                                 
.size _Z3p15ii, .-_Z3p15ii
