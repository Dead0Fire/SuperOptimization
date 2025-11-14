  .text
  .globl _Z3p11ii
  .type _Z3p11ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                     #  Line  RIP       Bytes  Opcode                 
._Z3p11ii:                 #        0x400656  0      OPC=<label>            
  andnl %edi, %esi, %edx   #  1     0x400656  5      OPC=andnl_r32_r32_r32  
  movl $0x10, %r9d         #  2     0x40065b  7      OPC=movl_r32_imm32_1   
  movq $0x10, %r10         #  3     0x400662  10     OPC=movq_r64_imm64     
  mulxl %r9d, %eax, %r8d   #  4     0x40066c  5      OPC=mulxl_r32_r32_r32  
  orq $0xffffffc0, %rax    #  5     0x400671  6      OPC=orq_rax_imm32      
  sarxq %rsi, %r10, %r10   #  6     0x400677  5      OPC=sarxq_r64_r64_r64  
  shlxl %esi, %r9d, %r11d  #  7     0x40067c  5      OPC=shlxl_r32_r32_r32  
  movq %r11, %r8           #  8     0x400681  3      OPC=movq_r64_r64_1     
  blsil %r9d, %eax         #  9     0x400684  5      OPC=blsil_r32_r32      
  sarxl %eax, %esi, %r11d  #  10    0x400689  5      OPC=sarxl_r32_r32_r32  
  cwtl                     #  11    0x40068e  1      OPC=cwtl               
  salw $0x20, %ax          #  12    0x40068f  4      OPC=salw_r16_imm8      
  rolb $0x1, %sil          #  13    0x400693  3      OPC=rolb_r8_one        
  subq %r10, %rsi          #  14    0x400696  3      OPC=subq_r64_r64_1     
  cwtl                     #  15    0x400699  1      OPC=cwtl               
  adcw %ax, %r11w          #  16    0x40069a  4      OPC=adcw_r16_r16_1     
  cmovzl %r8d, %esi        #  17    0x40069e  4      OPC=cmovzl_r32_r32     
  subq %rsi, %rdx          #  18    0x4006a2  3      OPC=subq_r64_r64_1     
  setnl %al                #  19    0x4006a5  3      OPC=setnl_r8           
  retq                     #  20    0x4006a8  1      OPC=retq               
                                                                            
.size _Z3p11ii, .-_Z3p11ii
