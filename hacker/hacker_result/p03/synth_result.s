  .text
  .globl _Z3p03i
  .type _Z3p03i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                #  Line  RIP       Bytes  Opcode               
._Z3p03i:             #        0x400646  0      OPC=<label>          
  xorq %rax, %rax     #  1     0x400646  3      OPC=xorq_r64_r64     
  mull %edi           #  2     0x400649  2      OPC=mull_r32         
  xchgb %al, %al      #  3     0x40064b  2      OPC=xchgb_r8_r8_1    
  xorb %ah, %ah       #  4     0x40064d  2      OPC=xorb_rh_rh       
  movsbl %dh, %ecx    #  5     0x40064f  3      OPC=movsbl_r32_rh    
  xorw $0x10, %cx     #  6     0x400652  4      OPC=xorw_r16_imm8    
  cmpw %dx, %cx       #  7     0x400656  3      OPC=cmpw_r16_r16_1   
  rolw %cl, %di       #  8     0x400659  3      OPC=rolw_r16_cl      
  sbbw $0xfffe, %ax   #  9     0x40065c  5      OPC=sbbw_r16_imm16   
  setnl %dl           #  10    0x400661  3      OPC=setnl_r8         
  orb %ch, %ah        #  11    0x400664  2      OPC=orb_rh_rh_1      
  addq %rcx, %rcx     #  12    0x400666  3      OPC=addq_r64_r64_1   
  testb $0x0, %ah     #  13    0x400669  3      OPC=testb_rh_imm8    
  sarb $0x7, %ah      #  14    0x40066c  3      OPC=sarb_rh_imm8     
  sbbb %ah, %ah       #  15    0x40066f  2      OPC=sbbb_rh_rh       
  addb %ch, %ch       #  16    0x400671  2      OPC=addb_rh_rh       
  blsiq %rdi, %rax    #  17    0x400673  5      OPC=blsiq_r64_r64    
  cmovnaq %rcx, %rdx  #  18    0x400678  4      OPC=cmovnaq_r64_r64  
  cmovow %dx, %ax     #  19    0x40067c  4      OPC=cmovow_r16_r16   
  retq                #  20    0x400680  1      OPC=retq             
                                                                     
.size _Z3p03i, .-_Z3p03i
