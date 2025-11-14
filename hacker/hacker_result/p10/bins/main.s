  .text
  .globl main
  .type main, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    175 bytes

# Text                   #  Line  RIP       Bytes  Opcode              
.main:                   #        0x4004d0  0      OPC=<label>         
  pushq %r13             #  1     0x4004d0  2      OPC=pushq_r64_1     
  pushq %r12             #  2     0x4004d2  2      OPC=pushq_r64_1     
  pushq %rbp             #  3     0x4004d4  1      OPC=pushq_r64_1     
  pushq %rbx             #  4     0x4004d5  1      OPC=pushq_r64_1     
  movl %edi, %ebx        #  5     0x4004d6  2      OPC=movl_r32_r32    
  subq $0x8, %rsp        #  6     0x4004d8  4      OPC=subq_r64_imm8   
  cmpl $0x1, %edi        #  7     0x4004dc  3      OPC=cmpl_r32_imm8   
  jle .L_400571          #  8     0x4004df  6      OPC=jle_label_1     
  movq 0x8(%rsi), %rdi   #  9     0x4004e5  4      OPC=movq_r64_m64    
  movq %rsi, %r12        #  10    0x4004e9  3      OPC=movq_r64_r64    
  movl $0xa, %edx        #  11    0x4004ec  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  12    0x4004f1  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  13    0x4004f3  5      OPC=callq_label     
  xorl %edi, %edi        #  14    0x4004f8  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebx        #  15    0x4004fa  3      OPC=cmpl_r32_imm8   
  movq %rax, %r13        #  16    0x4004fd  3      OPC=movq_r64_r64    
  movl %eax, %ebp        #  17    0x400500  2      OPC=movl_r32_r32    
  je .L_400517           #  18    0x400502  2      OPC=je_label        
  movq 0x10(%r12), %rdi  #  19    0x400504  5      OPC=movq_r64_m64    
  movl $0xa, %edx        #  20    0x400509  5      OPC=movl_r32_imm32  
  xorl %esi, %esi        #  21    0x40050e  2      OPC=xorl_r32_r32    
  callq .strtol_plt      #  22    0x400510  5      OPC=callq_label     
  movl %eax, %edi        #  23    0x400515  2      OPC=movl_r32_r32    
.L_400517:               #        0x400517  0      OPC=<label>         
  callq .srand_plt       #  24    0x400517  5      OPC=callq_label     
  testl %r13d, %r13d     #  25    0x40051c  3      OPC=testl_r32_r32   
  jle .L_400564          #  26    0x40051f  2      OPC=jle_label       
.L_400521:               #        0x400521  0      OPC=<label>         
  xorl %ebx, %ebx        #  27    0x400521  2      OPC=xorl_r32_r32    
  jmpq .L_400546         #  28    0x400523  2      OPC=jmpq_label      
  nop                    #  29    0x400525  1      OPC=nop             
  nop                    #  30    0x400526  1      OPC=nop             
  nop                    #  31    0x400527  1      OPC=nop             
.L_400528:               #        0x400528  0      OPC=<label>         
  callq .rand_plt        #  32    0x400528  5      OPC=callq_label     
  movl %eax, %r12d       #  33    0x40052d  3      OPC=movl_r32_r32    
  addl $0x1, %ebx        #  34    0x400530  3      OPC=addl_r32_imm8   
  callq .rand_plt        #  35    0x400533  5      OPC=callq_label     
  movl %r12d, %esi       #  36    0x400538  3      OPC=movl_r32_r32    
  movl %eax, %edi        #  37    0x40053b  2      OPC=movl_r32_r32    
  callq ._Z3p10ii        #  38    0x40053d  5      OPC=callq_label     
  cmpl %ebp, %ebx        #  39    0x400542  2      OPC=cmpl_r32_r32    
  jge .L_400564          #  40    0x400544  2      OPC=jge_label       
.L_400546:               #        0x400546  0      OPC=<label>         
  callq .rand_plt        #  41    0x400546  5      OPC=callq_label     
  testb $0x1, %al        #  42    0x40054b  2      OPC=testb_al_imm8   
  jne .L_400528          #  43    0x40054d  2      OPC=jne_label       
  callq .rand_plt        #  44    0x40054f  5      OPC=callq_label     
  addl $0x1, %ebx        #  45    0x400554  3      OPC=addl_r32_imm8   
  movl %eax, %esi        #  46    0x400557  2      OPC=movl_r32_r32    
  movl %eax, %edi        #  47    0x400559  2      OPC=movl_r32_r32    
  callq ._Z3p10ii        #  48    0x40055b  5      OPC=callq_label     
  cmpl %ebp, %ebx        #  49    0x400560  2      OPC=cmpl_r32_r32    
  jl .L_400546           #  50    0x400562  2      OPC=jl_label        
.L_400564:               #        0x400564  0      OPC=<label>         
  addq $0x8, %rsp        #  51    0x400564  4      OPC=addq_r64_imm8   
  xorl %eax, %eax        #  52    0x400568  2      OPC=xorl_r32_r32    
  popq %rbx              #  53    0x40056a  1      OPC=popq_r64_1      
  popq %rbp              #  54    0x40056b  1      OPC=popq_r64_1      
  popq %r12              #  55    0x40056c  2      OPC=popq_r64_1      
  popq %r13              #  56    0x40056e  2      OPC=popq_r64_1      
  retq                   #  57    0x400570  1      OPC=retq            
.L_400571:               #        0x400571  0      OPC=<label>         
  xorl %edi, %edi        #  58    0x400571  2      OPC=xorl_r32_r32    
  movl $0x400, %ebp      #  59    0x400573  5      OPC=movl_r32_imm32  
  callq .srand_plt       #  60    0x400578  5      OPC=callq_label     
  jmpq .L_400521         #  61    0x40057d  2      OPC=jmpq_label      
                                                                       
.size main, .-main

