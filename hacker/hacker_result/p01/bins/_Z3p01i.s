  .text
  .globl _Z3p01i
  .type _Z3p01i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                    #  Line  RIP       Bytes  Opcode             
._Z3p01i:                 #        0x400646  0      OPC=<label>        
  pushq %rbp              #  1     0x400646  1      OPC=pushq_r64_1    
  movq %rsp, %rbp         #  2     0x400647  3      OPC=movq_r64_r64   
  movl %edi, -0x14(%rbp)  #  3     0x40064a  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  4     0x40064d  3      OPC=movl_r32_m32   
  subl $0x1, %eax         #  5     0x400650  3      OPC=subl_r32_imm8  
  movl %eax, -0x4(%rbp)   #  6     0x400653  3      OPC=movl_m32_r32   
  movl -0x14(%rbp), %eax  #  7     0x400656  3      OPC=movl_r32_m32   
  andl -0x4(%rbp), %eax   #  8     0x400659  3      OPC=andl_r32_m32   
  popq %rbp               #  9     0x40065c  1      OPC=popq_r64_1     
  retq                    #  10    0x40065d  1      OPC=retq           
  xchgw %ax, %ax          #  11    0x40065e  2      OPC=xchgw_r16_ax   
                                                                       
.size _Z3p01i, .-_Z3p01i

