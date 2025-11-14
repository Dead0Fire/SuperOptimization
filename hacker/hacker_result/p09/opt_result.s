  .text
  .globl _Z3p09i
  .type _Z3p09i, @function

#! file-offset 0x666
#! rip-offset  0x400666
#! capacity    42 bytes

# Text                           #  Line  RIP       Bytes  Opcode                   
._Z3p09i:                        #        0x400666  0      OPC=<label>              
  imull $0xffffffff, %edi, %eax  #  1     0x400666  6      OPC=imull_r32_r32_imm32  
  cmpl %eax, %edi                #  2     0x40066c  2      OPC=cmpl_r32_r32_1       
  cmovnlel %edi, %eax            #  3     0x40066e  3      OPC=cmovnlel_r32_r32     
  retq                           #  4     0x400671  1      OPC=retq                 
                                                                                    
.size _Z3p09i, .-_Z3p09i
