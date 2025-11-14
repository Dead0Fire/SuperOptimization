  .text
  .globl _Z3p09i
  .type _Z3p09i, @function

#! file-offset 0x666
#! rip-offset  0x400666
#! capacity    42 bytes

# Text                 #  Line  RIP       Bytes  Opcode                
._Z3p09i:              #        0x400666  0      OPC=<label>           
  movl $0x10, %eax     #  1     0x400666  5      OPC=movl_r32_imm32    
  divb %al             #  2     0x40066b  2      OPC=divb_r8           
  mull %edi            #  3     0x40066d  2      OPC=mull_r32          
  lzcntl %edi, %r9d    #  4     0x40066f  5      OPC=lzcntl_r32_r32    
  mulw %r9w            #  5     0x400674  4      OPC=mulw_r16          
  xorw %r9w, %dx       #  6     0x400678  4      OPC=xorw_r16_r16      
  setnle %ah           #  7     0x40067c  3      OPC=setnle_rh         
  movq $0x1f, %rcx     #  8     0x40067f  10     OPC=movq_r64_imm64    
  orb %dl, %dl         #  9     0x400689  2      OPC=orb_r8_r8_1       
  cqto                 #  10    0x40068b  2      OPC=cqto              
  movl %edi, %r11d     #  11    0x40068d  3      OPC=movl_r32_r32_1    
  sbbl %r11d, %edx     #  12    0x400690  3      OPC=sbbl_r32_r32_1    
  subb %ch, %ch        #  13    0x400693  2      OPC=subb_rh_rh        
  setne %al            #  14    0x400695  3      OPC=setne_r8          
  decw %ax             #  15    0x400698  3      OPC=decw_r16          
  cmovnll %edi, %edx   #  16    0x40069b  3      OPC=cmovnll_r32_r32   
  movq %r11, %rcx      #  17    0x40069e  3      OPC=movq_r64_r64      
  subb %al, %ch        #  18    0x4006a1  2      OPC=subb_rh_r8_1      
  sbbb $0xfd, %al      #  19    0x4006a3  3      OPC=sbbb_r8_imm8      
  cmpxchgl %eax, %edx  #  20    0x4006a6  3      OPC=cmpxchgl_r32_r32  
  retq                 #  21    0x4006a9  1      OPC=retq              
                                                                       
.size _Z3p09i, .-_Z3p09i
