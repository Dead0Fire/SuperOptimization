  .text
  .globl _Z3p22i
  .type _Z3p22i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    90 bytes

# Text                     #  Line  RIP       Bytes  Opcode                  
._Z3p22i:                  #        0x400646  0      OPC=<label>             
  movzwl %di, %ecx         #  1     0x400646  3      OPC=movzwl_r32_r16      
  popcntl %edi, %edx       #  2     0x400649  4      OPC=popcntl_r32_r32     
  mulxl %ecx, %r11d, %r8d  #  3     0x40064d  5      OPC=mulxl_r32_r32_r32   
  setng %dh                #  4     0x400652  3      OPC=setng_rh            
  subl %r11d, %r11d        #  5     0x400655  3      OPC=subl_r32_r32        
  pdepl %r11d, %edx, %eax  #  6     0x400658  5      OPC=pdepl_r32_r32_r32   
  subl $0xfffffff0, %r8d   #  7     0x40065d  4      OPC=subl_r32_imm8       
  orb $0x1, %al            #  8     0x400661  2      OPC=orb_al_imm8         
  mulxl %eax, %esi, %r10d  #  9     0x400663  5      OPC=mulxl_r32_r32_r32   
  bextrl %edx, %edx, %edi  #  10    0x400668  5      OPC=bextrl_r32_r32_r32  
  setnc %ch                #  11    0x40066d  3      OPC=setnc_rh            
  imulb %r11b              #  12    0x400670  3      OPC=imulb_r8            
  sbbq $0xfffffff0, %rax   #  13    0x400673  6      OPC=sbbq_rax_imm32      
  andb %ah, %dh            #  14    0x400679  2      OPC=andb_rh_rh_1        
  addl $0xfffffffd, %eax   #  15    0x40067b  5      OPC=addl_eax_imm32      
  shlb $0x1, %ch           #  16    0x400680  2      OPC=shlb_rh_one         
  movb %dh, %cl            #  17    0x400682  2      OPC=movb_r8_rh          
  subl %edi, %ecx          #  18    0x400684  2      OPC=subl_r32_r32_1      
  setpe %r11b              #  19    0x400686  4      OPC=setpe_r8            
  subw $0xfffb, %r8w       #  20    0x40068a  6      OPC=subw_r16_imm16      
  adcb $0x4, %al           #  21    0x400690  2      OPC=adcb_al_imm8        
  cmovnpw %r11w, %si       #  22    0x400692  5      OPC=cmovnpw_r16_r16     
  movsbq %r11b, %rax       #  23    0x400697  4      OPC=movsbq_r64_r8       
  setpo %ah                #  24    0x40069b  3      OPC=setpo_rh            
  andq %rsi, %rax          #  25    0x40069e  3      OPC=andq_r64_r64        
  retq                     #  26    0x4006a1  1      OPC=retq                
                                                                             
.size _Z3p22i, .-_Z3p22i
