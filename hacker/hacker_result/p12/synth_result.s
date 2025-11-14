  .text
  .globl _Z3p12ii
  .type _Z3p12ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                     #  Line  RIP       Bytes  Opcode                 
._Z3p12ii:                 #        0x400656  0      OPC=<label>            
  lzcntl %edi, %ecx        #  1     0x400656  4      OPC=lzcntl_r32_r32     
  leal 0x8(,%ecx,2), %edx  #  2     0x40065a  8      OPC=leal_r32_m16       
  popcntq %rdx, %r10       #  3     0x400662  5      OPC=popcntq_r64_r64    
  salb $0xfd, %ch          #  4     0x400667  3      OPC=salb_rh_imm8       
  lzcntl %esi, %r9d        #  5     0x40066a  5      OPC=lzcntl_r32_r32     
  movl %r10d, %r8d         #  6     0x40066f  3      OPC=movl_r32_r32       
  addl $0x40, %esi         #  7     0x400672  3      OPC=addl_r32_imm8      
  movq %r10, %rax          #  8     0x400675  3      OPC=movq_r64_r64       
  andnl %esi, %r8d, %r10d  #  9     0x400678  5      OPC=andnl_r32_r32_r32  
  movb %r8b, %al           #  10    0x40067d  3      OPC=movb_r8_r8         
  cmovbel %eax, %ecx       #  11    0x400680  3      OPC=cmovbel_r32_r32    
  cmpw %r9w, %cx           #  12    0x400683  4      OPC=cmpw_r16_r16_1     
  setnc %al                #  13    0x400687  3      OPC=setnc_r8           
  retq                     #  14    0x40068a  1      OPC=retq               
                                                                            
.size _Z3p12ii, .-_Z3p12ii
