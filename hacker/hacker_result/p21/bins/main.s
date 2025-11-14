  .text
  .globl main
  .type main, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    212 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.main:                      #        0x4004d0  0      OPC=<label>         
  pushq %r15                #  1     0x4004d0  2      OPC=pushq_r64_1     
  pushq %r14                #  2     0x4004d2  2      OPC=pushq_r64_1     
  pushq %r13                #  3     0x4004d4  2      OPC=pushq_r64_1     
  pushq %r12                #  4     0x4004d6  2      OPC=pushq_r64_1     
  pushq %rbp                #  5     0x4004d8  1      OPC=pushq_r64_1     
  pushq %rbx                #  6     0x4004d9  1      OPC=pushq_r64_1     
  movl %edi, %ebp           #  7     0x4004da  2      OPC=movl_r32_r32    
  subq $0x18, %rsp          #  8     0x4004dc  4      OPC=subq_r64_imm8   
  cmpl $0x1, %edi           #  9     0x4004e0  3      OPC=cmpl_r32_imm8   
  jle .L_400596             #  10    0x4004e3  6      OPC=jle_label_1     
  movq 0x8(%rsi), %rdi      #  11    0x4004e9  4      OPC=movq_r64_m64    
  movq %rsi, %r12           #  12    0x4004ed  3      OPC=movq_r64_r64    
  movl $0xa, %edx           #  13    0x4004f0  5      OPC=movl_r32_imm32  
  xorl %esi, %esi           #  14    0x4004f5  2      OPC=xorl_r32_r32    
  callq .strtol_plt         #  15    0x4004f7  5      OPC=callq_label     
  xorl %edi, %edi           #  16    0x4004fc  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebp           #  17    0x4004fe  3      OPC=cmpl_r32_imm8   
  movq %rax, %r13           #  18    0x400501  3      OPC=movq_r64_r64    
  movl %eax, %ebx           #  19    0x400504  2      OPC=movl_r32_r32    
  je .L_40051b              #  20    0x400506  2      OPC=je_label        
  movq 0x10(%r12), %rdi     #  21    0x400508  5      OPC=movq_r64_m64    
  movl $0xa, %edx           #  22    0x40050d  5      OPC=movl_r32_imm32  
  xorl %esi, %esi           #  23    0x400512  2      OPC=xorl_r32_r32    
  callq .strtol_plt         #  24    0x400514  5      OPC=callq_label     
  movl %eax, %edi           #  25    0x400519  2      OPC=movl_r32_r32    
.L_40051b:                  #        0x40051b  0      OPC=<label>         
  callq .srand_plt          #  26    0x40051b  5      OPC=callq_label     
  testl %r13d, %r13d        #  27    0x400520  3      OPC=testl_r32_r32   
  jle .L_400585             #  28    0x400523  2      OPC=jle_label       
.L_400525:                  #        0x400525  0      OPC=<label>         
  xorl %r12d, %r12d         #  29    0x400525  3      OPC=xorl_r32_r32    
  movl $0x55555556, %ebp    #  30    0x400528  5      OPC=movl_r32_imm32  
  nop                       #  31    0x40052d  1      OPC=nop             
  nop                       #  32    0x40052e  1      OPC=nop             
  nop                       #  33    0x40052f  1      OPC=nop             
.L_400530:                  #        0x400530  0      OPC=<label>         
  callq .rand_plt           #  34    0x400530  5      OPC=callq_label     
  movl %eax, %r13d          #  35    0x400535  3      OPC=movl_r32_r32    
  movl %eax, (%rsp)         #  36    0x400538  3      OPC=movl_m32_r32    
  addl $0x1, %r12d          #  37    0x40053b  4      OPC=addl_r32_imm8   
  callq .rand_plt           #  38    0x40053f  5      OPC=callq_label     
  movl %eax, %r14d          #  39    0x400544  3      OPC=movl_r32_r32    
  movl %eax, 0x4(%rsp)      #  40    0x400547  4      OPC=movl_m32_r32    
  callq .rand_plt           #  41    0x40054b  5      OPC=callq_label     
  movl %eax, %r15d          #  42    0x400550  3      OPC=movl_r32_r32    
  movl %eax, 0x8(%rsp)      #  43    0x400553  4      OPC=movl_m32_r32    
  callq .rand_plt           #  44    0x400557  5      OPC=callq_label     
  movl %eax, %edi           #  45    0x40055c  2      OPC=movl_r32_r32    
  movl %r15d, %ecx          #  46    0x40055e  3      OPC=movl_r32_r32    
  movl %r13d, %esi          #  47    0x400561  3      OPC=movl_r32_r32    
  imull %ebp                #  48    0x400564  2      OPC=imull_r32       
  movl %edi, %eax           #  49    0x400566  2      OPC=movl_r32_r32    
  sarl $0x1f, %eax          #  50    0x400568  3      OPC=sarl_r32_imm8   
  subl %eax, %edx           #  51    0x40056b  2      OPC=subl_r32_r32    
  leal (%rdx,%rdx,2), %eax  #  52    0x40056d  3      OPC=leal_r32_m16    
  movl %r14d, %edx          #  53    0x400570  3      OPC=movl_r32_r32    
  subl %eax, %edi           #  54    0x400573  2      OPC=subl_r32_r32    
  movslq %edi, %rdi         #  55    0x400575  3      OPC=movslq_r64_r32  
  movl (%rsp,%rdi,4), %edi  #  56    0x400578  3      OPC=movl_r32_m32    
  callq ._Z3p21iiii         #  57    0x40057b  5      OPC=callq_label     
  cmpl %r12d, %ebx          #  58    0x400580  3      OPC=cmpl_r32_r32    
  jg .L_400530              #  59    0x400583  2      OPC=jg_label        
.L_400585:                  #        0x400585  0      OPC=<label>         
  addq $0x18, %rsp          #  60    0x400585  4      OPC=addq_r64_imm8   
  xorl %eax, %eax           #  61    0x400589  2      OPC=xorl_r32_r32    
  popq %rbx                 #  62    0x40058b  1      OPC=popq_r64_1      
  popq %rbp                 #  63    0x40058c  1      OPC=popq_r64_1      
  popq %r12                 #  64    0x40058d  2      OPC=popq_r64_1      
  popq %r13                 #  65    0x40058f  2      OPC=popq_r64_1      
  popq %r14                 #  66    0x400591  2      OPC=popq_r64_1      
  popq %r15                 #  67    0x400593  2      OPC=popq_r64_1      
  retq                      #  68    0x400595  1      OPC=retq            
.L_400596:                  #        0x400596  0      OPC=<label>         
  xorl %edi, %edi           #  69    0x400596  2      OPC=xorl_r32_r32    
  movl $0x400, %ebx         #  70    0x400598  5      OPC=movl_r32_imm32  
  callq .srand_plt          #  71    0x40059d  5      OPC=callq_label     
  jmpq .L_400525            #  72    0x4005a2  2      OPC=jmpq_label      
                                                                          
.size main, .-main

