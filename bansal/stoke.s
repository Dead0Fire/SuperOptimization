  .text
  .globl _Z8traverseP4Node
  .type _Z8traverseP4Node, @function
._Z8traverseP4Node:            
  pushq %rbp             # 0   
  movq %rsp, %rbp        # 1   
  movq %rdi, -0x8(%rsp)  # 2   
.L_400868:                     
  cmpq $0x0, -0x8(%rsp)  # 3   
  je .L_400892           # 4   
#! file-offset 0
#! rip-offset  0
#! capacity    0 bytes

# Text                   #  Line  RIP   Bytes  Opcode            
._Z6kernel:              #        0     0      OPC=<label>       
  movq -0x8(%rsp), %rax  #  1     0     5      OPC=movq_r64_m64  
  movq 0x8(%rax), %rcx   #  2     0x5   4      OPC=movq_r64_m64  
  movq %rcx, -0x8(%rsp)  #  3     0x9   5      OPC=movq_m64_r64  
  sall $0x1, (%rax)      #  4     0xe   2      OPC=sall_m32_one  
  jmpq .L_400868         # 12  
.L_400892:                     
  popq %rbp              # 13  
  retq                   # 14  
  nop                    # 15  
  xchgw %ax, %ax         # 16  

.size _Z8traverseP4Node, .-_Z8traverseP4Node
