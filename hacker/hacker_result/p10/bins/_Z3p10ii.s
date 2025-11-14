  .text
  .globl _Z3p10ii
  .type _Z3p10ii, @function

#! file-offset 0x676
#! rip-offset  0x400676
#! capacity    58 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p10ii:                #        0x400676  0      OPC=<label>        
  pushq %rbp              #  1     0x400676  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400677  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40067a  3      OPC=movl_m32_r32   
  movl %esi, -0x18(%rbp)  #  4     0x40067d  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  5     0x400680  3      OPC=movl_r32_m32   
  andl -0x18(%rbp), %eax  #  6     0x400683  3      OPC=andl_r32_m32   
  movl %eax, -0x8(%rbp)   #  7     0x400686  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  8     0x400689  3      OPC=movl_r32_m32   
  xorl -0x18(%rbp), %eax  #  9     0x40068c  3      OPC=xorl_r32_m32   
  movl %eax, -0x4(%rbp)   #  10    0x40068f  3      OPC=movl_m32_r32   
  movl -0x4(%rbp), %edx   #  11    0x400692  3      OPC=movl_r32_m32   
  movl -0x8(%rbp), %eax   #  12    0x400695  3      OPC=movl_r32_m32   
  cmpl %eax, %edx         #  13    0x400698  2      OPC=cmpl_r32_r32   
  setbe %al               #  14    0x40069a  3      OPC=setbe_r8       
  movzbl %al, %eax        #  15    0x40069d  3      OPC=movzbl_r32_r8  
  popq %rbp               #  16    0x4006a0  1      OPC=popq_r64_1     
  retq                    #  17    0x4006a1  1      OPC=retq           
  nop                     #  18    0x4006a2  1      OPC=nop            
  nop                     #  19    0x4006a3  1      OPC=nop            
  nop                     #  20    0x4006a4  1      OPC=nop            
  nop                     #  21    0x4006a5  1      OPC=nop            
  nop                     #  22    0x4006a6  1      OPC=nop            
  nop                     #  23    0x4006a7  1      OPC=nop            
  nop                     #  24    0x4006a8  1      OPC=nop            
  nop                     #  25    0x4006a9  1      OPC=nop            
  nop                     #  26    0x4006aa  1      OPC=nop            
  nop                     #  27    0x4006ab  1      OPC=nop            
  nop                     #  28    0x4006ac  1      OPC=nop            
  nop                     #  29    0x4006ad  1      OPC=nop            
  nop                     #  30    0x4006ae  1      OPC=nop            
  nop                     #  31    0x4006af  1      OPC=nop            
                                                                       
.size _Z3p10ii, .-_Z3p10ii

