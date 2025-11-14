  .text
  .globl _Z3p16ii
  .type _Z3p16ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p16ii:                #        0x400656  0      OPC=<label>        
  pushq %rbp              #  1     0x400656  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400657  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40065a  3      OPC=movl_m32_r32   
  movl %esi, -0x18(%rbp)  #  4     0x40065d  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  5     0x400660  3      OPC=movl_r32_m32   
  xorl -0x18(%rbp), %eax  #  6     0x400663  3      OPC=xorl_r32_m32   
  movl %eax, -0xc(%rbp)   #  7     0x400666  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %edx  #  8     0x400669  3      OPC=movl_r32_m32   
  movl -0x18(%rbp), %eax  #  9     0x40066c  3      OPC=movl_r32_m32   
  cmpl %eax, %edx         #  10    0x40066f  2      OPC=cmpl_r32_r32   
  setae %al               #  11    0x400671  3      OPC=setae_r8       
  movzbl %al, %eax        #  12    0x400674  3      OPC=movzbl_r32_r8  
  negl %eax               #  13    0x400677  2      OPC=negl_r32       
  movl %eax, -0x8(%rbp)   #  14    0x400679  3      OPC=movl_m32_r32   
  movl -0xc(%rbp), %eax   #  15    0x40067c  3      OPC=movl_r32_m32   
  andl -0x8(%rbp), %eax   #  16    0x40067f  3      OPC=andl_r32_m32   
  movl %eax, -0x4(%rbp)   #  17    0x400682  3      OPC=movl_m32_r32   
  movl -0x4(%rbp), %eax   #  18    0x400685  3      OPC=movl_r32_m32   
  xorl -0x18(%rbp), %eax  #  19    0x400688  3      OPC=xorl_r32_m32   
  popq %rbp               #  20    0x40068b  1      OPC=popq_r64_1     
  retq                    #  21    0x40068c  1      OPC=retq           
  nop                     #  22    0x40068d  1      OPC=nop            
  nop                     #  23    0x40068e  1      OPC=nop            
  nop                     #  24    0x40068f  1      OPC=nop            
                                                                       
.size _Z3p16ii, .-_Z3p16ii

