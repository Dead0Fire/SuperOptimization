  .text
  .globl _Z3p15ii
  .type _Z3p15ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                           #  Line  RIP       Bytes  Opcode                   
._Z3p15ii:                       #        0x400656  0      OPC=<label>              
  movl $0x2, %r10d               #  1     0x400656  6      OPC=movl_r32_imm32       
  imulq $0xfffffffe, %r10, %rcx  #  2     0x40065c  7      OPC=imulq_r64_r64_imm32  
  shlxq %rsi, %rdi, %rax         #  3     0x400663  5      OPC=shlxq_r64_r64_r64    
  addl %esi, %ecx                #  4     0x400668  2      OPC=addl_r32_r32         
  adcl %edi, %esi                #  5     0x40066a  2      OPC=adcl_r32_r32         
  setle %r11b                    #  6     0x40066c  4      OPC=setle_r8             
  addw %ax, %ax                  #  7     0x400670  3      OPC=addw_r16_r16         
  rorb $0x1, %ch                 #  8     0x400673  3      OPC=rorb_rh_imm8         
  blsil %r10d, %ecx              #  9     0x400676  5      OPC=blsil_r32_r32        
  shrb $0x1, %r11b               #  10    0x40067b  3      OPC=shrb_r8_one          
  rcrl $0x1, %esi                #  11    0x40067e  2      OPC=rcrl_r32_one         
  movl $0xfffffff0, %edx         #  12    0x400680  6      OPC=movl_r32_imm32_1     
  orl $0x1, %eax                 #  13    0x400686  3      OPC=orl_r32_imm8         
  movzbw %ah, %ax                #  14    0x400689  4      OPC=movzbw_r16_rh        
  salw $0x1, %dx                 #  15    0x40068d  3      OPC=salw_r16_one         
  orw $0x5, %ax                  #  16    0x400690  4      OPC=orw_ax_imm16         
  orb %ch, %dh                   #  17    0x400694  2      OPC=orb_rh_rh            
  xorq $0x3, %rax                #  18    0x400696  6      OPC=xorq_rax_imm32       
  orb %dh, %dh                   #  19    0x40069c  2      OPC=orb_rh_rh_1          
  xchgw %ax, %r10w               #  20    0x40069e  3      OPC=xchgw_r16_ax         
  cmovael %esi, %eax             #  21    0x4006a1  3      OPC=cmovael_r32_r32      
  retq                           #  22    0x4006a4  1      OPC=retq                 
                                                                                    
.size _Z3p15ii, .-_Z3p15ii
