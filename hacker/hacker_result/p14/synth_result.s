  .text
  .globl _Z3p14ii
  .type _Z3p14ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                     #  Line  RIP       Bytes  Opcode                 
._Z3p14ii:                 #        0x400656  0      OPC=<label>            
  blsrq %rdi, %rax         #  1     0x400656  5      OPC=blsrq_r64_r64      
  cmovcq %rax, %rsi        #  2     0x40065b  4      OPC=cmovcq_r64_r64     
  subb $0xfc, %al          #  3     0x40065f  3      OPC=subb_r8_imm8       
  cltq                     #  4     0x400662  2      OPC=cltq               
  xorl %r10d, %r10d        #  5     0x400664  3      OPC=xorl_r32_r32       
  bzhil %edi, %r10d, %ecx  #  6     0x400667  5      OPC=bzhil_r32_r32_r32  
  shlq %cl, %rax           #  7     0x40066c  3      OPC=shlq_r64_cl        
  addl %esi, %edi          #  8     0x40066f  2      OPC=addl_r32_r32       
  setnge %dh               #  9     0x400671  3      OPC=setnge_rh          
  adcl $0xfffffffa, %eax   #  10    0x400674  5      OPC=adcl_eax_imm32     
  orw $0x10, %ax           #  11    0x400679  4      OPC=orw_ax_imm16       
  salb $0x80, %dh          #  12    0x40067d  3      OPC=salb_rh_imm8       
  sarb $0x1, %dh           #  13    0x400680  2      OPC=sarb_rh_one        
  xchgl %edi, %eax         #  14    0x400682  2      OPC=xchgl_r32_r32      
  rcrl $0x1, %eax          #  15    0x400684  2      OPC=rcrl_r32_one       
  retq                     #  16    0x400686  1      OPC=retq               
                                                                            
.size _Z3p14ii, .-_Z3p14ii
