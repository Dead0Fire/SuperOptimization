  .text
  .globl _Z3p01i
  .type _Z3p01i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                    #  Line  RIP       Bytes  Opcode               
._Z3p01i:                 #        0x400646  0      OPC=<label>          
  xorq %rax, %rax         #  1     0x400646  3      OPC=xorq_r64_r64     
  xorw $0x4, %ax          #  2     0x400649  5      OPC=xorw_r16_imm16   
  sarw $0xf8, %ax         #  3     0x40064e  4      OPC=sarw_r16_imm8    
  movw $0xfff0, %cx       #  4     0x400652  4      OPC=movw_r16_imm16   
  cmovnzl %eax, %edi      #  5     0x400656  3      OPC=cmovnzl_r32_r32  
  andb $0xf8, %al         #  6     0x400659  2      OPC=andb_al_imm8     
  xorl $0x4, %eax         #  7     0x40065b  5      OPC=xorl_eax_imm32   
  andq $0xffffffff, %rax  #  8     0x400660  6      OPC=andq_rax_imm32   
  blsrl %edi, %esi        #  9     0x400666  5      OPC=blsrl_r32_r32    
  salb $0x1, %cl          #  10    0x40066b  2      OPC=salb_r8_one      
  cmovnal %esi, %eax      #  11    0x40066d  3      OPC=cmovnal_r32_r32  
  shlw %cl, %ax           #  12    0x400670  3      OPC=shlw_r16_cl      
  retq                    #  13    0x400673  1      OPC=retq             
                                                                         
.size _Z3p01i, .-_Z3p01i
