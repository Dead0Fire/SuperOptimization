  .text
  .globl _Z3p13i
  .type _Z3p13i, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    42 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p13i:                 #        0x400656  0      OPC=<label>        
  pushq %rbp              #  1     0x400656  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400657  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40065a  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  4     0x40065d  3      OPC=movl_r32_m32   
  sarl $0x1f, %eax        #  5     0x400660  3      OPC=sarl_r32_imm8  
  movl %eax, -0xc(%rbp)   #  6     0x400663  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  7     0x400666  3      OPC=movl_r32_m32   
  negl %eax               #  8     0x400669  2      OPC=negl_r32       
  movl %eax, -0x8(%rbp)   #  9     0x40066b  3      OPC=movl_m32_r32   
  movl -0x8(%rbp), %eax   #  10    0x40066e  3      OPC=movl_r32_m32   
  sarl $0x1f, %eax        #  11    0x400671  3      OPC=sarl_r32_imm8  
  movl %eax, -0x4(%rbp)   #  12    0x400674  3      OPC=movl_m32_r32   
  movl -0xc(%rbp), %eax   #  13    0x400677  3      OPC=movl_r32_m32   
  orl -0x4(%rbp), %eax    #  14    0x40067a  3      OPC=orl_r32_m32    
  popq %rbp               #  15    0x40067d  1      OPC=popq_r64_1     
  retq                    #  16    0x40067e  1      OPC=retq           
  nop                     #  17    0x40067f  1      OPC=nop            
                                                                       
.size _Z3p13i, .-_Z3p13i

