  .text
  .globl _Z3p07i
  .type _Z3p07i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    42 bytes

# Text                   #  Line  RIP       Bytes  Opcode                 
._Z3p07i:                #        0x400646  0      OPC=<label>            
  movzbq %dil, %rax      #  1     0x400646  4      OPC=movzbq_r64_r8      
  movzwq %di, %rsi       #  2     0x40064a  4      OPC=movzwq_r64_r16     
  addb %ah, %ah          #  3     0x40064e  2      OPC=addb_rh_rh         
  btrl $0x40, %esi       #  4     0x400650  4      OPC=btrl_r32_imm8      
  andw $0xfffa, %ax      #  5     0x400654  4      OPC=andw_ax_imm16      
  xorl $0x10, %eax       #  6     0x400658  5      OPC=xorl_eax_imm32     
  xchgw %ax, %si         #  7     0x40065d  2      OPC=xchgw_r16_ax       
  movzwl %si, %ecx       #  8     0x40065f  3      OPC=movzwl_r32_r16     
  setae %ch              #  9     0x400662  3      OPC=setae_rh           
  tzcntq %rsi, %r8       #  10    0x400665  5      OPC=tzcntq_r64_r64     
  xorb %ch, %cl          #  11    0x40066a  2      OPC=xorb_r8_rh_1       
  imulb %dil             #  12    0x40066c  3      OPC=imulb_r8           
  roll $0x10, %ecx       #  13    0x40066f  3      OPC=roll_r32_imm8      
  adcq %rsi, %rsi        #  14    0x400672  3      OPC=adcq_r64_r64_1     
  bswap %esi             #  15    0x400675  2      OPC=bswap_r32          
  incl %edi              #  16    0x400677  2      OPC=incl_r32           
  cmovngl %esi, %esi     #  17    0x400679  3      OPC=cmovngl_r32_r32    
  orl %edi, %esi         #  18    0x40067c  2      OPC=orl_r32_r32_1      
  rorb %cl, %cl          #  19    0x40067e  2      OPC=rorb_r8_cl         
  orw %cx, %di           #  20    0x400680  3      OPC=orw_r16_r16        
  movsbq %dil, %rdx      #  21    0x400683  4      OPC=movsbq_r64_r8      
  pextq %r8, %rdx, %rax  #  22    0x400687  5      OPC=pextq_r64_r64_r64  
  blsil %esi, %eax       #  23    0x40068c  5      OPC=blsil_r32_r32      
  retq                   #  24    0x400691  1      OPC=retq               
                                                                          
.size _Z3p07i, .-_Z3p07i
