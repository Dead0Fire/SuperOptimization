  .text
  .globl _Z3p10ii
  .type _Z3p10ii, @function

#! file-offset 0x676
#! rip-offset  0x400676
#! capacity    58 bytes

# Text                   #  Line  RIP       Bytes  Opcode                
._Z3p10ii:               #        0x400676  0      OPC=<label>           
  lzcntl %esi, %r11d     #  1     0x400676  5      OPC=lzcntl_r32_r32    
  xchgb %sil, %dil       #  2     0x40067b  3      OPC=xchgb_r8_r8       
  movq %rdi, %rcx        #  3     0x40067e  3      OPC=movq_r64_r64_1    
  tzcntl %ecx, %ecx      #  4     0x400681  4      OPC=tzcntl_r32_r32    
  movzwl %si, %eax       #  5     0x400685  3      OPC=movzwl_r32_r16    
  shlq %cl, %rax         #  6     0x400688  3      OPC=shlq_r64_cl       
  orq $0xfffffff0, %rax  #  7     0x40068b  6      OPC=orq_rax_imm32     
  lzcntl %edi, %edx      #  8     0x400691  4      OPC=lzcntl_r32_r32    
  subb %dl, %r11b        #  9     0x400695  3      OPC=subb_r8_r8        
  setnz %r11b            #  10    0x400698  4      OPC=setnz_r8          
  popcntl %ecx, %r8d     #  11    0x40069c  5      OPC=popcntl_r32_r32   
  crc32w %ax, %edi       #  12    0x4006a1  6      OPC=crc32w_r32_r16    
  orq $0x5, %rdi         #  13    0x4006a7  4      OPC=orq_r64_imm8      
  movw %r11w, %ax        #  14    0x4006ab  4      OPC=movw_r16_r16_1    
  cwtl                   #  15    0x4006af  1      OPC=cwtl              
  sbbb $0x2, %al         #  16    0x4006b0  2      OPC=sbbb_al_imm8      
  setnp %r8b             #  17    0x4006b2  4      OPC=setnp_r8          
  cmpxchgw %r8w, %ax     #  18    0x4006b6  5      OPC=cmpxchgw_r16_r16  
  retq                   #  19    0x4006bb  1      OPC=retq              
                                                                         
.size _Z3p10ii, .-_Z3p10ii
