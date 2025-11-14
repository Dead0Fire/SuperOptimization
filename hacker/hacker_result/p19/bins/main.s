  .text
  .globl main
  .type main, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    148 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.main:                   #        0x4004d0  0      OPC=<label>         
  pushq %r13             #  1     0x4004d0  2      OPC=pushq_r64_1     
  pushq %r12             #  2     0x4004d2  2      OPC=pushq_r64_1     
  pushq %rbp             #  3     0x4004d4  1      OPC=pushq_r64_1     
  pushq %rbx             #  4     0x4004d5  1      OPC=pushq_r64_1     
  movl %edi, %ebx        #  5     0x4004d6  2      OPC=movl_r32_r32    
  subq $0x8, %rsp        #  6     0x4004d8  4      OPC=subq_r64_imm8   
  cmpl $0x1, %edi        #  7     0x4004dc  3      OPC=cmpl_r32_imm8   
  jle .L_400555          #  8     0x4004df  2      OPC=jle_label       
  movq 0x8(%rsi), %rdi   #  9     0x4004e1  4      OPC=movq_r64_m64    
  movq %rsi, %rbp        #  10    0x4004e5  3      OPC=movq_r64_r64    
  movl $0xa, %edx        #  11    0x4004e8  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  12    0x4004ed  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  13    0x4004ef  5      OPC=callq_label     
  xorl %edi, %edi        #  14    0x4004f4  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebx        #  15    0x4004f6  3      OPC=cmpl_r32_imm8   
  movq %rax, %r12        #  16    0x4004f9  3      OPC=movq_r64_r64    
  movl %eax, %r13d       #  17    0x4004fc  3      OPC=movl_r32_r32    
  je .L_400513           #  18    0x4004ff  2      OPC=je_label        
  movq 0x10(%rbp), %rdi  #  19    0x400501  4      OPC=movq_r64_m64    
  movl $0xa, %edx        #  20    0x400505  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  21    0x40050a  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  22    0x40050c  5      OPC=callq_label     
  movl %eax, %edi        #  23    0x400511  2      OPC=movl_r32_r32    
.L_400513:               #        0x400513  0      OPC=<label>         
  callq .srand_plt       #  24    0x400513  5      OPC=callq_label     
  testl %r12d, %r12d     #  25    0x400518  3      OPC=testl_r32_r32   
  jle .L_400548          #  26    0x40051b  2      OPC=jle_label       
.L_40051d:               #        0x40051d  0      OPC=<label>         
  xorl %ebx, %ebx        #  27    0x40051d  2      OPC=xorl_r32_r32    
  nop                    #  28    0x40051f  1      OPC=nop             
.L_400520:               #        0x400520  0      OPC=<label>         
  callq .rand_plt        #  29    0x400520  5      OPC=callq_label     
  movl %eax, %r12d       #  30    0x400525  3      OPC=movl_r32_r32    
  addl $0x1, %ebx        #  31    0x400528  3      OPC=addl_r32_imm8   
  callq .rand_plt        #  32    0x40052b  5      OPC=callq_label     
  movl %eax, %ebp        #  33    0x400530  2      OPC=movl_r32_r32    
  callq .rand_plt        #  34    0x400532  5      OPC=callq_label     
  movl %r12d, %edx       #  35    0x400537  3      OPC=movl_r32_r32    
  movl %eax, %edi        #  36    0x40053a  2      OPC=movl_r32_r32    
  movl %ebp, %esi        #  37    0x40053c  2      OPC=movl_r32_r32    
  callq ._Z3p19iii       #  38    0x40053e  5      OPC=callq_label     
  cmpl %r13d, %ebx       #  39    0x400543  3      OPC=cmpl_r32_r32    
  jl .L_400520           #  40    0x400546  2      OPC=jl_label        
.L_400548:               #        0x400548  0      OPC=<label>         
  addq $0x8, %rsp        #  41    0x400548  4      OPC=addq_r64_imm8   
  xorl %eax, %eax        #  42    0x40054c  2      OPC=xorl_r32_r32    
  popq %rbx              #  43    0x40054e  1      OPC=popq_r64_1      
  popq %rbp              #  44    0x40054f  1      OPC=popq_r64_1      
  popq %r12              #  45    0x400550  2      OPC=popq_r64_1      
  popq %r13              #  46    0x400552  2      OPC=popq_r64_1      
  retq                   #  47    0x400554  1      OPC=retq            
.L_400555:               #        0x400555  0      OPC=<label>         
  xorl %edi, %edi        #  48    0x400555  2      OPC=xorl_r32_r32    
  movl $0x400, %r13d     #  49    0x400557  6      OPC=movl_r32_imm32  
  callq .srand_plt       #  50    0x40055d  5      OPC=callq_label     
  jmpq .L_40051d         #  51    0x400562  2      OPC=jmpq_label      
                                                                       
.size main, .-main

