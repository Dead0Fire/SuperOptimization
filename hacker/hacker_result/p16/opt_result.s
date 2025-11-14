  .text
  .globl _Z3p16ii
  .type _Z3p16ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                #  Line  RIP       Bytes  Opcode               
._Z3p16ii:            #        0x400656  0      OPC=<label>          
  movq %rsi, %rax     #  1     0x400656  3      OPC=movq_r64_r64_1   
  cmpl %esi, %edi     #  2     0x400659  2      OPC=cmpl_r32_r32_1   
  cmovael %edi, %eax  #  3     0x40065b  3      OPC=cmovael_r32_r32  
  retq                #  4     0x40065e  1      OPC=retq             
                                                                     
.size _Z3p16ii, .-_Z3p16ii
