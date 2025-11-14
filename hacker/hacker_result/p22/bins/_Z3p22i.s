  .text
  .globl _Z3p22i
  .type _Z3p22i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    90 bytes

# Text                           #  Line  RIP       Bytes  Opcode                   
._Z3p22i:                        #        0x400646  0      OPC=<label>              
  pushq %rbp                     #  1     0x400646  1      OPC=pushq_r64_1          
  movq %rsp, %rbp                #  2     0x400647  3      OPC=movq_r64_r64         
  movl %edi, -0x24(%rbp)         #  3     0x40064a  3      OPC=movl_m32_r32         
  movl -0x24(%rbp), %eax         #  4     0x40064d  3      OPC=movl_r32_m32         
  sarl $0x1, %eax                #  5     0x400650  2      OPC=sarl_r32_one         
  movl %eax, -0x1c(%rbp)         #  6     0x400652  3      OPC=movl_m32_r32         
  movl -0x1c(%rbp), %eax         #  7     0x400655  3      OPC=movl_r32_m32         
  xorl -0x24(%rbp), %eax         #  8     0x400658  3      OPC=xorl_r32_m32         
  movl %eax, -0x18(%rbp)         #  9     0x40065b  3      OPC=movl_m32_r32         
  movl -0x18(%rbp), %eax         #  10    0x40065e  3      OPC=movl_r32_m32         
  sarl $0x2, %eax                #  11    0x400661  3      OPC=sarl_r32_imm8        
  movl %eax, -0x14(%rbp)         #  12    0x400664  3      OPC=movl_m32_r32         
  movl -0x18(%rbp), %eax         #  13    0x400667  3      OPC=movl_r32_m32         
  xorl -0x14(%rbp), %eax         #  14    0x40066a  3      OPC=xorl_r32_m32         
  movl %eax, -0x10(%rbp)         #  15    0x40066d  3      OPC=movl_m32_r32         
  movl -0x10(%rbp), %eax         #  16    0x400670  3      OPC=movl_r32_m32         
  andl $0x11111111, %eax         #  17    0x400673  5      OPC=andl_eax_imm32       
  movl %eax, -0xc(%rbp)          #  18    0x400678  3      OPC=movl_m32_r32         
  movl -0xc(%rbp), %eax          #  19    0x40067b  3      OPC=movl_r32_m32         
  imull $0x11111111, %eax, %eax  #  20    0x40067e  6      OPC=imull_r32_r32_imm32  
  movl %eax, -0x8(%rbp)          #  21    0x400684  3      OPC=movl_m32_r32         
  movl -0x8(%rbp), %eax          #  22    0x400687  3      OPC=movl_r32_m32         
  sarl $0x1c, %eax               #  23    0x40068a  3      OPC=sarl_r32_imm8        
  movl %eax, -0x4(%rbp)          #  24    0x40068d  3      OPC=movl_m32_r32         
  movl -0x4(%rbp), %eax          #  25    0x400690  3      OPC=movl_r32_m32         
  andl $0x1, %eax                #  26    0x400693  3      OPC=andl_r32_imm8        
  popq %rbp                      #  27    0x400696  1      OPC=popq_r64_1           
  retq                           #  28    0x400697  1      OPC=retq                 
  nop                            #  29    0x400698  1      OPC=nop                  
  nop                            #  30    0x400699  1      OPC=nop                  
  nop                            #  31    0x40069a  1      OPC=nop                  
  nop                            #  32    0x40069b  1      OPC=nop                  
  nop                            #  33    0x40069c  1      OPC=nop                  
  nop                            #  34    0x40069d  1      OPC=nop                  
  nop                            #  35    0x40069e  1      OPC=nop                  
  nop                            #  36    0x40069f  1      OPC=nop                  
                                                                                    
.size _Z3p22i, .-_Z3p22i

