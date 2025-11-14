  .text
  .globl main
  .type main, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    137 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.main:                   #        0x4004d0  0      OPC=<label>         
  pushq %r13             #  1     0x4004d0  2      OPC=pushq_r64_1     
  pushq %r12             #  2     0x4004d2  2      OPC=pushq_r64_1     
  pushq %rbp             #  3     0x4004d4  1      OPC=pushq_r64_1     
  pushq %rbx             #  4     0x4004d5  1      OPC=pushq_r64_1     
  movl %edi, %ebx        #  5     0x4004d6  2      OPC=movl_r32_r32    
  subq $0x8, %rsp        #  6     0x4004d8  4      OPC=subq_r64_imm8   
  cmpl $0x1, %edi        #  7     0x4004dc  3      OPC=cmpl_r32_imm8   
  jle .L_40054a          #  8     0x4004df  2      OPC=jle_label       
  movq 0x8(%rsi), %rdi   #  9     0x4004e1  4      OPC=movq_r64_m64    
  movq %rsi, %rbp        #  10    0x4004e5  3      OPC=movq_r64_r64    
  movl $0xa, %edx        #  11    0x4004e8  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  12    0x4004ed  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  13    0x4004ef  5      OPC=callq_label     
  xorl %edi, %edi        #  14    0x4004f4  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebx        #  15    0x4004f6  3      OPC=cmpl_r32_imm8   
  movq %rax, %r13        #  16    0x4004f9  3      OPC=movq_r64_r64    
  movl %eax, %r12d       #  17    0x4004fc  3      OPC=movl_r32_r32    
  je .L_400513           #  18    0x4004ff  2      OPC=je_label        
  movq 0x10(%rbp), %rdi  #  19    0x400501  4      OPC=movq_r64_m64    
  movl $0xa, %edx        #  20    0x400505  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  21    0x40050a  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  22    0x40050c  5      OPC=callq_label     
  movl %eax, %edi        #  23    0x400511  2      OPC=movl_r32_r32    
.L_400513:               #        0x400513  0      OPC=<label>         
  callq .srand_plt       #  24    0x400513  5      OPC=callq_label     
  testl %r13d, %r13d     #  25    0x400518  3      OPC=testl_r32_r32   
  jle .L_40053d          #  26    0x40051b  2      OPC=jle_label       
.L_40051d:               #        0x40051d  0      OPC=<label>         
  xorl %ebx, %ebx        #  27    0x40051d  2      OPC=xorl_r32_r32    
  nop                    #  28    0x40051f  1      OPC=nop             
.L_400520:               #        0x400520  0      OPC=<label>         
  callq .rand_plt        #  29    0x400520  5      OPC=callq_label     
  movl %eax, %ebp        #  30    0x400525  2      OPC=movl_r32_r32    
  addl $0x1, %ebx        #  31    0x400527  3      OPC=addl_r32_imm8   
  callq .rand_plt        #  32    0x40052a  5      OPC=callq_label     
  movl %ebp, %esi        #  33    0x40052f  2      OPC=movl_r32_r32    
  movl %eax, %edi        #  34    0x400531  2      OPC=movl_r32_r32    
  callq ._Z3p12ii        #  35    0x400533  5      OPC=callq_label     
  cmpl %r12d, %ebx       #  36    0x400538  3      OPC=cmpl_r32_r32    
  jl .L_400520           #  37    0x40053b  2      OPC=jl_label        
.L_40053d:               #        0x40053d  0      OPC=<label>         
  addq $0x8, %rsp        #  38    0x40053d  4      OPC=addq_r64_imm8   
  xorl %eax, %eax        #  39    0x400541  2      OPC=xorl_r32_r32    
  popq %rbx              #  40    0x400543  1      OPC=popq_r64_1      
  popq %rbp              #  41    0x400544  1      OPC=popq_r64_1      
  popq %r12              #  42    0x400545  2      OPC=popq_r64_1      
  popq %r13              #  43    0x400547  2      OPC=popq_r64_1      
  retq                   #  44    0x400549  1      OPC=retq            
.L_40054a:               #        0x40054a  0      OPC=<label>         
  xorl %edi, %edi        #  45    0x40054a  2      OPC=xorl_r32_r32    
  movl $0x400, %r12d     #  46    0x40054c  6      OPC=movl_r32_imm32  
  callq .srand_plt       #  47    0x400552  5      OPC=callq_label     
  jmpq .L_40051d         #  48    0x400557  2      OPC=jmpq_label      
                                                                       
.size main, .-main

