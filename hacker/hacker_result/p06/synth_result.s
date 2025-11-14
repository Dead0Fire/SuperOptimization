  .text
  .globl _Z3p06i
  .type _Z3p06i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                     #  Line  RIP       Bytes  Opcode                  
._Z3p06i:                  #        0x400646  0      OPC=<label>             
  xorq %rax, %rax          #  1     0x400646  3      OPC=xorq_r64_r64        
  cmpl $0xffffffc0, %eax   #  2     0x400649  5      OPC=cmpl_eax_imm32      
  cqto                     #  3     0x40064e  2      OPC=cqto                
  shlxq %rdx, %rdi, %rcx   #  4     0x400650  5      OPC=shlxq_r64_r64_r64   
  xchgw %ax, %ax           #  5     0x400655  2      OPC=xchgw_r16_ax        
  pdepl %edx, %ecx, %esi   #  6     0x400657  5      OPC=pdepl_r32_r32_r32   
  setnp %ah                #  7     0x40065c  3      OPC=setnp_rh            
  adcw %di, %dx            #  8     0x40065f  3      OPC=adcw_r16_r16_1      
  rcrb $0x1, %ah           #  9     0x400662  2      OPC=rcrb_rh_one         
  salq $0x80, %rdi         #  10    0x400664  4      OPC=salq_r64_imm8       
  movb %ah, %ah            #  11    0x400668  2      OPC=movb_rh_rh          
  movl %esi, %r8d          #  12    0x40066a  3      OPC=movl_r32_r32_1      
  movsbl %r8b, %r11d       #  13    0x40066d  4      OPC=movsbl_r32_r8       
  notw %si                 #  14    0x400671  3      OPC=notw_r16            
  blsil %edx, %ecx         #  15    0x400674  5      OPC=blsil_r32_r32       
  orw %dx, %di             #  16    0x400679  3      OPC=orw_r16_r16_1       
  xchgb %dh, %ch           #  17    0x40067c  2      OPC=xchgb_rh_rh_1       
  btrw $0x80, %ax          #  18    0x40067e  5      OPC=btrw_r16_imm8       
  btrl $0x7, %r11d         #  19    0x400683  5      OPC=btrl_r32_imm8       
  imulw $0x40, %si, %r11w  #  20    0x400688  5      OPC=imulw_r16_r16_imm8  
  adcw $0xffff, %cx        #  21    0x40068d  5      OPC=adcw_r16_imm16      
  adcl $0x8, %r11d         #  22    0x400692  4      OPC=adcl_r32_imm8       
  setz %ah                 #  23    0x400696  3      OPC=setz_rh             
  andl $0x0, %r8d          #  24    0x400699  4      OPC=andl_r32_imm8       
  cmovncl %edi, %eax       #  25    0x40069d  3      OPC=cmovncl_r32_r32     
  retq                     #  26    0x4006a0  1      OPC=retq                
                                                                             
.size _Z3p06i, .-_Z3p06i
