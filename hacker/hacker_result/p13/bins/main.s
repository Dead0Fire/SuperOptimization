  .text
  .globl main
  .type main, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    149 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.main:                   #        0x4004d0  0      OPC=<label>         
  pushq %r13             #  1     0x4004d0  2      OPC=pushq_r64_1     
  pushq %r12             #  2     0x4004d2  2      OPC=pushq_r64_1     
  pushq %rbp             #  3     0x4004d4  1      OPC=pushq_r64_1     
  pushq %rbx             #  4     0x4004d5  1      OPC=pushq_r64_1     
  movl %edi, %ebx        #  5     0x4004d6  2      OPC=movl_r32_r32    
  subq $0x8, %rsp        #  6     0x4004d8  4      OPC=subq_r64_imm8   
  cmpl $0x1, %edi        #  7     0x4004dc  3      OPC=cmpl_r32_imm8   
  jle .L_400550          #  8     0x4004df  2      OPC=jle_label       
  movq 0x8(%rsi), %rdi   #  9     0x4004e1  4      OPC=movq_r64_m64    
  movq %rsi, %r12        #  10    0x4004e5  3      OPC=movq_r64_r64    
  movl $0xa, %edx        #  11    0x4004e8  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  12    0x4004ed  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  13    0x4004ef  5      OPC=callq_label     
  xorl %edi, %edi        #  14    0x4004f4  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebx        #  15    0x4004f6  3      OPC=cmpl_r32_imm8   
  movq %rax, %r13        #  16    0x4004f9  3      OPC=movq_r64_r64    
  movl %eax, %ebp        #  17    0x4004fc  2      OPC=movl_r32_r32    
  je .L_400513           #  18    0x4004fe  2      OPC=je_label        
  movq 0x10(%r12), %rdi  #  19    0x400500  5      OPC=movq_r64_m64    
  movl $0xa, %edx        #  20    0x400505  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  21    0x40050a  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  22    0x40050c  5      OPC=callq_label     
  movl %eax, %edi        #  23    0x400511  2      OPC=movl_r32_r32    
.L_400513:               #        0x400513  0      OPC=<label>         
  callq .srand_plt       #  24    0x400513  5      OPC=callq_label     
  xorl %edi, %edi        #  25    0x400518  2      OPC=xorl_r32_r32    
  callq ._Z3p13i         #  26    0x40051a  5      OPC=callq_label     
  testl %r13d, %r13d     #  27    0x40051f  3      OPC=testl_r32_r32   
  jle .L_400543          #  28    0x400522  2      OPC=jle_label       
.L_400524:               #        0x400524  0      OPC=<label>         
  xorl %ebx, %ebx        #  29    0x400524  2      OPC=xorl_r32_r32    
  nop                    #  30    0x400526  1      OPC=nop             
  nop                    #  31    0x400527  1      OPC=nop             
  nop                    #  32    0x400528  1      OPC=nop             
  nop                    #  33    0x400529  1      OPC=nop             
  nop                    #  34    0x40052a  1      OPC=nop             
  nop                    #  35    0x40052b  1      OPC=nop             
  nop                    #  36    0x40052c  1      OPC=nop             
  nop                    #  37    0x40052d  1      OPC=nop             
  nop                    #  38    0x40052e  1      OPC=nop             
  nop                    #  39    0x40052f  1      OPC=nop             
.L_400530:               #        0x400530  0      OPC=<label>         
  callq .rand_plt        #  40    0x400530  5      OPC=callq_label     
  addl $0x1, %ebx        #  41    0x400535  3      OPC=addl_r32_imm8   
  movl %eax, %edi        #  42    0x400538  2      OPC=movl_r32_r32    
  callq ._Z3p13i         #  43    0x40053a  5      OPC=callq_label     
  cmpl %ebp, %ebx        #  44    0x40053f  2      OPC=cmpl_r32_r32    
  jl .L_400530           #  45    0x400541  2      OPC=jl_label        
.L_400543:               #        0x400543  0      OPC=<label>         
  addq $0x8, %rsp        #  46    0x400543  4      OPC=addq_r64_imm8   
  xorl %eax, %eax        #  47    0x400547  2      OPC=xorl_r32_r32    
  popq %rbx              #  48    0x400549  1      OPC=popq_r64_1      
  popq %rbp              #  49    0x40054a  1      OPC=popq_r64_1      
  popq %r12              #  50    0x40054b  2      OPC=popq_r64_1      
  popq %r13              #  51    0x40054d  2      OPC=popq_r64_1      
  retq                   #  52    0x40054f  1      OPC=retq            
.L_400550:               #        0x400550  0      OPC=<label>         
  xorl %edi, %edi        #  53    0x400550  2      OPC=xorl_r32_r32    
  movl $0x400, %ebp      #  54    0x400552  5      OPC=movl_r32_imm32  
  callq .srand_plt       #  55    0x400557  5      OPC=callq_label     
  xorl %edi, %edi        #  56    0x40055c  2      OPC=xorl_r32_r32    
  callq ._Z3p13i         #  57    0x40055e  5      OPC=callq_label     
  jmpq .L_400524         #  58    0x400563  2      OPC=jmpq_label      
                                                                       
.size main, .-main

