  .text
  .globl _Z3p24i
  .type _Z3p24i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    122 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p24i:                 #        0x400646  0      OPC=<label>        
  blsrl %edi, %eax        #  1     0x400646  5      OPC=blsrl_r32_r32  
  sarl $0x6, %eax         #  2     0x40064b  3      OPC=sarl_r32_imm8  
  orl %edi, %eax          #  3     0x40064e  2      OPC=orl_r32_r32_1  
  movq %rsp, %rbp         #  4     0x400650  3      OPC=movq_r64_r64   
  movl %eax, -0x28(%rbp)  #  5     0x400653  3      OPC=movl_m32_r32   
  sarl $0x2, %eax         #  6     0x400656  3      OPC=sarl_r32_imm8  
  orl -0x28(%rbp), %eax   #  7     0x400659  3      OPC=orl_r32_m32    
  shrl $0x2, %eax         #  8     0x40065c  3      OPC=shrl_r32_imm8  
  orl -0x28(%rbp), %eax   #  9     0x40065f  3      OPC=orl_r32_m32    
  movq %rax, -0x10(%rbp)  #  10    0x400662  4      OPC=movq_m64_r64   
  shrq $0x1, %rax         #  11    0x400666  3      OPC=shrq_r64_one   
  orl -0x10(%rbp), %eax   #  12    0x400669  3      OPC=orl_r32_m32    
  sarl $0xf0, %eax        #  13    0x40066c  3      OPC=sarl_r32_imm8  
  incl %eax               #  14    0x40066f  2      OPC=incl_r32       
  retq                    #  15    0x400671  1      OPC=retq           
                                                                       
.size _Z3p24i, .-_Z3p24i
