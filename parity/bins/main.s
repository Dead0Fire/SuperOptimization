  .text
  .globl main
  .type main, @function

#! file-offset 0x450
#! rip-offset  0x400450
#! capacity    62 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.main:                  #        0x400450  0      OPC=<label>         
  pushq %r12            #  1     0x400450  2      OPC=pushq_r64_1     
  pushq %rbp            #  2     0x400452  1      OPC=pushq_r64_1     
  movl $0xa, %edx       #  3     0x400453  5      OPC=movl_r32_imm32  
  pushq %rbx            #  4     0x400458  1      OPC=pushq_r64_1     
  movq 0x8(%rsi), %rdi  #  5     0x400459  4      OPC=movq_r64_m64    
  xorl %esi, %esi       #  6     0x40045d  2      OPC=xorl_r32_r32    
  callq .strtoull_plt   #  7     0x40045f  5      OPC=callq_label     
  testq %rax, %rax      #  8     0x400464  3      OPC=testq_r64_r64   
  movq %rax, %r12       #  9     0x400467  3      OPC=movq_r64_r64    
  je .L_40048a          #  10    0x40046a  2      OPC=je_label        
  xorl %ebx, %ebx       #  11    0x40046c  2      OPC=xorl_r32_r32    
  xorl %ebp, %ebp       #  12    0x40046e  2      OPC=xorl_r32_r32    
.L_400470:              #        0x400470  0      OPC=<label>         
  movq %rbx, %rdi       #  13    0x400470  3      OPC=movq_r64_r64    
  addq $0x1, %rbx       #  14    0x400473  4      OPC=addq_r64_imm8   
  callq ._Z6paritym     #  15    0x400477  5      OPC=callq_label     
  addl %eax, %ebp       #  16    0x40047c  2      OPC=addl_r32_r32    
  cmpq %r12, %rbx       #  17    0x40047e  3      OPC=cmpq_r64_r64    
  jne .L_400470         #  18    0x400481  2      OPC=jne_label       
.L_400483:              #        0x400483  0      OPC=<label>         
  movl %ebp, %eax       #  19    0x400483  2      OPC=movl_r32_r32    
  popq %rbx             #  20    0x400485  1      OPC=popq_r64_1      
  popq %rbp             #  21    0x400486  1      OPC=popq_r64_1      
  popq %r12             #  22    0x400487  2      OPC=popq_r64_1      
  retq                  #  23    0x400489  1      OPC=retq            
.L_40048a:              #        0x40048a  0      OPC=<label>         
  xorl %ebp, %ebp       #  24    0x40048a  2      OPC=xorl_r32_r32    
  jmpq .L_400483        #  25    0x40048c  2      OPC=jmpq_label      
                                                                      
.size main, .-main

