  .text
  .globl _Z3p24i
  .type _Z3p24i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    122 bytes

# Text                            #  Line  RIP       Bytes  Opcode                   
._Z3p24i:                         #        0x400646  0      OPC=<label>              
  lzcntl %edi, %ecx               #  1     0x400646  4      OPC=lzcntl_r32_r32       
  movsbl %ch, %eax                #  2     0x40064a  3      OPC=movsbl_r32_rh        
  rclb $0x1, %al                  #  3     0x40064d  2      OPC=rclb_r8_one          
  movq $0x1, %rdx                 #  4     0x40064f  7      OPC=movq_r64_imm32       
  notl %edx                       #  5     0x400656  2      OPC=notl_r32             
  andl $0x0, %edx                 #  6     0x400658  6      OPC=andl_r32_imm32       
  movq $0xfffffffffffffffe, %r11  #  7     0x40065e  10     OPC=movq_r64_imm64       
  imull $0xfffffffe, %edi, %r8d   #  8     0x400668  7      OPC=imull_r32_r32_imm32  
  cmpl %r11d, %edi                #  9     0x40066f  3      OPC=cmpl_r32_r32_1       
  rcrw %cl, %ax                   #  10    0x400672  3      OPC=rcrw_r16_cl          
  rcrw $0x1, %dx                  #  11    0x400675  3      OPC=rcrw_r16_one         
  cmovaq %r11, %rdx               #  12    0x400678  4      OPC=cmovaq_r64_r64       
  cmpw $0x40, %di                 #  13    0x40067c  4      OPC=cmpw_r16_imm8        
  xchgl %eax, %r8d                #  14    0x400680  2      OPC=xchgl_r32_eax        
  rcrb %cl, %ah                   #  15    0x400682  2      OPC=rcrb_rh_cl           
  addb %ah, %ch                   #  16    0x400684  2      OPC=addb_rh_rh           
  xchgb %ah, %cl                  #  17    0x400686  2      OPC=xchgb_r8_rh          
  setae %dh                       #  18    0x400688  3      OPC=setae_rh             
  shlb $0x1, %ah                  #  19    0x40068b  2      OPC=shlb_rh_one          
  cmovnbeq %rdx, %rax             #  20    0x40068d  4      OPC=cmovnbeq_r64_r64     
  shlb %cl, %ah                   #  21    0x400691  2      OPC=shlb_rh_cl           
  xchgq %r8, %rax                 #  22    0x400693  2      OPC=xchgq_rax_r64        
  retq                            #  23    0x400695  1      OPC=retq                 
                                                                                     
.size _Z3p24i, .-_Z3p24i
