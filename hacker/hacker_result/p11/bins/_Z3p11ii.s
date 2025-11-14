  .text
  .globl _Z3p11ii
  .type _Z3p11ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p11ii:                #        0x400656  0      OPC=<label>        
  pushq %rbp              #  1     0x400656  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400657  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40065a  3      OPC=movl_m32_r32   
  movl %esi, -0x18(%rbp)  #  4     0x40065d  3      OPC=movl_m32_r32   
  movl -0x18(%rbp), %eax  #  5     0x400660  3      OPC=movl_r32_m32   
  notl %eax               #  6     0x400663  2      OPC=notl_r32       
  movl %eax, -0x8(%rbp)   #  7     0x400665  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  8     0x400668  3      OPC=movl_r32_m32   
  andl -0x8(%rbp), %eax   #  9     0x40066b  3      OPC=andl_r32_m32   
  movl %eax, -0x4(%rbp)   #  10    0x40066e  3      OPC=movl_m32_r32   
  movl -0x4(%rbp), %edx   #  11    0x400671  3      OPC=movl_r32_m32   
  movl -0x18(%rbp), %eax  #  12    0x400674  3      OPC=movl_r32_m32   
  cmpl %eax, %edx         #  13    0x400677  2      OPC=cmpl_r32_r32   
  seta %al                #  14    0x400679  3      OPC=seta_r8        
  movzbl %al, %eax        #  15    0x40067c  3      OPC=movzbl_r32_r8  
  popq %rbp               #  16    0x40067f  1      OPC=popq_r64_1     
  retq                    #  17    0x400680  1      OPC=retq           
  nop                     #  18    0x400681  1      OPC=nop            
  nop                     #  19    0x400682  1      OPC=nop            
  nop                     #  20    0x400683  1      OPC=nop            
  nop                     #  21    0x400684  1      OPC=nop            
  nop                     #  22    0x400685  1      OPC=nop            
  nop                     #  23    0x400686  1      OPC=nop            
  nop                     #  24    0x400687  1      OPC=nop            
  nop                     #  25    0x400688  1      OPC=nop            
  nop                     #  26    0x400689  1      OPC=nop            
  nop                     #  27    0x40068a  1      OPC=nop            
  nop                     #  28    0x40068b  1      OPC=nop            
  nop                     #  29    0x40068c  1      OPC=nop            
  nop                     #  30    0x40068d  1      OPC=nop            
  nop                     #  31    0x40068e  1      OPC=nop            
  nop                     #  32    0x40068f  1      OPC=nop            
                                                                       
.size _Z3p11ii, .-_Z3p11ii

