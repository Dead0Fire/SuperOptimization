  .text
  .globl _Z3p17i
  .type _Z3p17i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                            #  Line  RIP       Bytes  Opcode                 
._Z3p17i:                         #        0x400646  0      OPC=<label>            
  movl $0xfffffffa, %eax          #  1     0x400646  5      OPC=movl_r32_imm32     
  movq $0xfffffffffffffffd, %r11  #  2     0x40064b  10     OPC=movq_r64_imm64     
  negq %rdi                       #  3     0x400655  3      OPC=negq_r64           
  cmovpoq %rax, %rax              #  4     0x400658  4      OPC=cmovpoq_r64_r64    
  xorb %ah, %al                   #  5     0x40065c  2      OPC=xorb_r8_rh_1       
  pdepl %edi, %eax, %r8d          #  6     0x40065e  5      OPC=pdepl_r32_r32_r32  
  xchgq %r11, %r8                 #  7     0x400663  3      OPC=xchgq_r64_r64_1    
  subq %rdi, %r11                 #  8     0x400666  3      OPC=subq_r64_r64_1     
  andnl %r11d, %edi, %esi         #  9     0x400669  5      OPC=andnl_r32_r32_r32  
  sarb $0xfc, %ah                 #  10    0x40066e  3      OPC=sarb_rh_imm8       
  orw $0x1, %ax                   #  11    0x400671  4      OPC=orw_ax_imm16       
  sarb $0x1, %ah                  #  12    0x400675  2      OPC=sarb_rh_one        
  movl $0x80, %edx                #  13    0x400677  5      OPC=movl_r32_imm32     
  cmpl $0xffffffff, %eax          #  14    0x40067c  6      OPC=cmpl_r32_imm32     
  adcl $0xffffff80, %edi          #  15    0x400682  3      OPC=adcl_r32_imm8      
  xorl $0x2, %edi                 #  16    0x400685  3      OPC=xorl_r32_imm8      
  adcb %dil, %dil                 #  17    0x400688  3      OPC=adcb_r8_r8_1       
  adcb %dh, %ah                   #  18    0x40068b  2      OPC=adcb_rh_rh         
  xchgq %rax, %rsi                #  19    0x40068d  2      OPC=xchgq_r64_rax      
  retq                            #  20    0x40068f  1      OPC=retq               
                                                                                   
.size _Z3p17i, .-_Z3p17i
