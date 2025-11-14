  .text
  .globl _Z3p05i
  .type _Z3p05i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                      #  Line  RIP       Bytes  Opcode                 
._Z3p05i:                   #        0x400646  0      OPC=<label>            
  movl %edi, %r10d          #  1     0x400646  3      OPC=movl_r32_r32       
  blsrl %edi, %r9d          #  2     0x400649  5      OPC=blsrl_r32_r32      
  setne %r9b                #  3     0x40064e  4      OPC=setne_r8           
  sbbb %r9b, %dil           #  4     0x400652  3      OPC=sbbb_r8_r8_1       
  blsrl %edi, %edx          #  5     0x400655  5      OPC=blsrl_r32_r32      
  andnl %edx, %r10d, %r11d  #  6     0x40065a  5      OPC=andnl_r32_r32_r32  
  movq %r10, %rax           #  7     0x40065f  3      OPC=movq_r64_r64       
  xchgb %dh, %dh            #  8     0x400662  2      OPC=xchgb_rh_rh_1      
  blsmskl %eax, %eax        #  9     0x400664  5      OPC=blsmskl_r32_r32    
  incb %dh                  #  10    0x400669  2      OPC=incb_rh            
  cmpw $0x40, %dx           #  11    0x40066b  5      OPC=cmpw_r16_imm16     
  setbe %dh                 #  12    0x400670  3      OPC=setbe_rh           
  cmovlel %r9d, %r11d       #  13    0x400673  4      OPC=cmovlel_r32_r32    
  seto %dl                  #  14    0x400677  3      OPC=seto_r8            
  crc32q %rdx, %r11         #  15    0x40067a  6      OPC=crc32q_r64_r64     
  rcrb $0x80, %dh           #  16    0x400680  3      OPC=rcrb_rh_imm8       
  roll $0xfd, %r11d         #  17    0x400683  4      OPC=roll_r32_imm8      
  rolq $0x10, %r11          #  18    0x400687  4      OPC=rolq_r64_imm8      
  cmovbl %edi, %edi         #  19    0x40068b  3      OPC=cmovbl_r32_r32     
  xchgw %di, %ax            #  20    0x40068e  2      OPC=xchgw_ax_r16       
  orq %rdi, %rax            #  21    0x400690  3      OPC=orq_r64_r64        
  retq                      #  22    0x400693  1      OPC=retq               
                                                                             
.size _Z3p05i, .-_Z3p05i
