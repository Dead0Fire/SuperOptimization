  .text
  .globl _Z3p21iiii
  .type _Z3p21iiii, @function

#! file-offset 0x696
#! rip-offset  0x400696
#! capacity    106 bytes

# Text                 #  Line  RIP       Bytes  Opcode                
._Z3p21iiii:           #        0x400696  0      OPC=<label>           
  xorq %rax, %rax      #  1     0x400696  3      OPC=xorq_r64_r64      
  movq $0x6, %r11      #  2     0x400699  10     OPC=movq_r64_imm64    
  shlb $0x40, %r11b    #  3     0x4006a3  4      OPC=shlb_r8_imm8      
  cmovsl %eax, %ecx    #  4     0x4006a7  3      OPC=cmovsl_r32_r32    
  subb $0x4, %ah       #  5     0x4006aa  3      OPC=subb_rh_imm8      
  cmovnsq %rax, %rax   #  6     0x4006ad  4      OPC=cmovnsq_r64_r64   
  cltq                 #  7     0x4006b1  2      OPC=cltq              
  andq $0x3, %rax      #  8     0x4006b3  4      OPC=andq_r64_imm8     
  cbtw                 #  9     0x4006b7  2      OPC=cbtw              
  salw %cl, %ax        #  10    0x4006b9  3      OPC=salw_r16_cl       
  sarw $0x1, %ax       #  11    0x4006bc  3      OPC=sarw_r16_one      
  cwtl                 #  12    0x4006bf  1      OPC=cwtl              
  xorb $0x80, %ah      #  13    0x4006c0  3      OPC=xorb_rh_imm8      
  movw $0xfffc, %r11w  #  14    0x4006c3  6      OPC=movw_r16_imm16_1  
  cmpxchgq %r11, %rcx  #  15    0x4006c9  4      OPC=cmpxchgq_r64_r64  
  retq                 #  16    0x4006cd  1      OPC=retq              
                                                                       
.size _Z3p21iiii, .-_Z3p21iiii
