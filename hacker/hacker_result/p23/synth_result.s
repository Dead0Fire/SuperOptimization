  .text
  .globl _Z3p23i
  .type _Z3p23i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    170 bytes

# Text                    #  Line  RIP       Bytes  Opcode                 
._Z3p23i:                 #        0x400646  0      OPC=<label>            
  xorq %rax, %rax         #  1     0x400646  3      OPC=xorq_r64_r64       
  movl $0x80, %ecx        #  2     0x400649  5      OPC=movl_r32_imm32     
  imulq %rdi              #  3     0x40064e  3      OPC=imulq_r64          
  pextl %ecx, %edx, %r9d  #  4     0x400651  5      OPC=pextl_r32_r32_r32  
  popcntl %edi, %esi      #  5     0x400656  4      OPC=popcntl_r32_r32    
  pextl %eax, %edi, %eax  #  6     0x40065a  5      OPC=pextl_r32_r32_r32  
  rorw $0x1, %r9w         #  7     0x40065f  4      OPC=rorw_r16_one       
  xchgw %r9w, %ax         #  8     0x400663  3      OPC=xchgw_ax_r16       
  andw $0x2, %ax          #  9     0x400666  4      OPC=andw_ax_imm16      
  xaddb %ah, %al          #  10    0x40066a  3      OPC=xaddb_r8_rh        
  orl $0x10, %eax         #  11    0x40066d  5      OPC=orl_eax_imm32      
  xchgq %rsi, %rax        #  12    0x400672  2      OPC=xchgq_rax_r64      
  retq                    #  13    0x400674  1      OPC=retq               
                                                                           
.size _Z3p23i, .-_Z3p23i
