  .text
  .globl _Z6kernel
  .type _Z6kernel, @function

#! file-offset 0
#! rip-offset  0
#! capacity    0 bytes

# Text                   #  Line  RIP   Bytes  Opcode            
._Z6kernel:              #        0     0      OPC=<label>       
  movq -0x8(%rsp), %rax  #  1     0     5      OPC=movq_r64_m64  
  movq 0x8(%rax), %rcx   #  2     0x5   4      OPC=movq_r64_m64  
  movq %rcx, -0x8(%rsp)  #  3     0x9   5      OPC=movq_m64_r64  
  sall $0x1, (%rax)      #  4     0xe   2      OPC=sall_m32_one  
  retq                   #  5     0x10  1      OPC=retq          
                                                                 
.size _Z6kernel, .-_Z6kernel
