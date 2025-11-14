  .text
  .globl _Z3p04i
  .type _Z3p04i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                           #  Line  RIP       Bytes  Opcode                 
._Z3p04i:                        #        0x400646  0      OPC=<label>            
  xorq %rax, %rax                #  1     0x400646  3      OPC=xorq_r64_r64       
  cqto                           #  2     0x400649  2      OPC=cqto               
  cmpxchgb %ah, %ah              #  3     0x40064b  3      OPC=cmpxchgb_rh_rh     
  cmovnsw %dx, %ax               #  4     0x40064e  4      OPC=cmovnsw_r16_r16    
  orq $0x2, %rax                 #  5     0x400652  6      OPC=orq_rax_imm32      
  blsil %edi, %eax               #  6     0x400658  5      OPC=blsil_r32_r32      
  movq $0xfffffffffffffffe, %r9  #  7     0x40065d  10     OPC=movq_r64_imm64     
  blsmskl %eax, %r9d             #  8     0x400667  5      OPC=blsmskl_r32_r32    
  subl %r9d, %edi                #  9     0x40066c  3      OPC=subl_r32_r32_1     
  rolb $0x1, %dl                 #  10    0x40066f  2      OPC=rolb_r8_one        
  subq $0x4, %rax                #  11    0x400671  6      OPC=subq_rax_imm32     
  pdepq %rdx, %rdi, %rsi         #  12    0x400677  5      OPC=pdepq_r64_r64_r64  
  xorb %ch, %ch                  #  13    0x40067c  2      OPC=xorb_rh_rh         
  cmovzw %r9w, %si               #  14    0x40067e  5      OPC=cmovzw_r16_r16     
  cmpxchgl %r9d, %esi            #  15    0x400683  4      OPC=cmpxchgl_r32_r32   
  retq                           #  16    0x400687  1      OPC=retq               
                                                                                  
.size _Z3p04i, .-_Z3p04i
