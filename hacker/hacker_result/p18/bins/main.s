  .text
  .globl main
  .type main, @function

#! file-offset 0x4d0
#! rip-offset  0x4004d0
#! capacity    187 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.main:                      #        0x4004d0  0      OPC=<label>         
  pushq %r13                #  1     0x4004d0  2      OPC=pushq_r64_1     
  pushq %r12                #  2     0x4004d2  2      OPC=pushq_r64_1     
  pushq %rbp                #  3     0x4004d4  1      OPC=pushq_r64_1     
  pushq %rbx                #  4     0x4004d5  1      OPC=pushq_r64_1     
  movl %edi, %ebx           #  5     0x4004d6  2      OPC=movl_r32_r32    
  subq $0x8, %rsp           #  6     0x4004d8  4      OPC=subq_r64_imm8   
  cmpl $0x1, %edi           #  7     0x4004dc  3      OPC=cmpl_r32_imm8   
  jle .L_40057d             #  8     0x4004df  6      OPC=jle_label_1     
  movq 0x8(%rsi), %rdi      #  9     0x4004e5  4      OPC=movq_r64_m64    
  movq %rsi, %r12           #  10    0x4004e9  3      OPC=movq_r64_r64    
  movl $0xa, %edx           #  11    0x4004ec  5      OPC=movl_r32_imm32  
  xorl %esi, %esi           #  12    0x4004f1  2      OPC=xorl_r32_r32    
  callq .strtol_plt         #  13    0x4004f3  5      OPC=callq_label     
  xorl %edi, %edi           #  14    0x4004f8  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebx           #  15    0x4004fa  3      OPC=cmpl_r32_imm8   
  movq %rax, %r13           #  16    0x4004fd  3      OPC=movq_r64_r64    
  movl %eax, %ebp           #  17    0x400500  2      OPC=movl_r32_r32    
  je .L_400517              #  18    0x400502  2      OPC=je_label        
  movq 0x10(%r12), %rdi     #  19    0x400504  5      OPC=movq_r64_m64    
  movl $0xa, %edx           #  20    0x400509  5      OPC=movl_r32_imm32  
  xorl %esi, %esi           #  21    0x40050e  2      OPC=xorl_r32_r32    
  callq .strtol_plt         #  22    0x400510  5      OPC=callq_label     
  movl %eax, %edi           #  23    0x400515  2      OPC=movl_r32_r32    
.L_400517:                  #        0x400517  0      OPC=<label>         
  callq .srand_plt          #  24    0x400517  5      OPC=callq_label     
  testl %r13d, %r13d        #  25    0x40051c  3      OPC=testl_r32_r32   
  jle .L_400570             #  26    0x40051f  2      OPC=jle_label       
.L_400521:                  #        0x400521  0      OPC=<label>         
  xorl %ebx, %ebx           #  27    0x400521  2      OPC=xorl_r32_r32    
  movl $0x1, %r12d          #  28    0x400523  6      OPC=movl_r32_imm32  
  jmpq .L_400544            #  29    0x400529  2      OPC=jmpq_label      
  nop                       #  30    0x40052b  1      OPC=nop             
  nop                       #  31    0x40052c  1      OPC=nop             
  nop                       #  32    0x40052d  1      OPC=nop             
  nop                       #  33    0x40052e  1      OPC=nop             
  nop                       #  34    0x40052f  1      OPC=nop             
.L_400530:                  #        0x400530  0      OPC=<label>         
  callq .rand_plt           #  35    0x400530  5      OPC=callq_label     
  addl $0x1, %ebx           #  36    0x400535  3      OPC=addl_r32_imm8   
  movslq %eax, %rdi         #  37    0x400538  3      OPC=movslq_r64_r32  
  callq ._Z3p18i            #  38    0x40053b  5      OPC=callq_label     
  cmpl %ebp, %ebx           #  39    0x400540  2      OPC=cmpl_r32_r32    
  jge .L_400570             #  40    0x400542  2      OPC=jge_label       
.L_400544:                  #        0x400544  0      OPC=<label>         
  callq .rand_plt           #  41    0x400544  5      OPC=callq_label     
  testb $0x1, %al           #  42    0x400549  2      OPC=testb_al_imm8   
  jne .L_400530             #  43    0x40054b  2      OPC=jne_label       
  callq .rand_plt           #  44    0x40054d  5      OPC=callq_label     
  cltd                      #  45    0x400552  1      OPC=cltd            
  movq %r12, %rdi           #  46    0x400553  3      OPC=movq_r64_r64    
  addl $0x1, %ebx           #  47    0x400556  3      OPC=addl_r32_imm8   
  shrl $0x1b, %edx          #  48    0x400559  3      OPC=shrl_r32_imm8   
  leal (%rax,%rdx,1), %ecx  #  49    0x40055c  3      OPC=leal_r32_m16    
  andl $0x1f, %ecx          #  50    0x40055f  3      OPC=andl_r32_imm8   
  subl %edx, %ecx           #  51    0x400562  2      OPC=subl_r32_r32    
  shlq %cl, %rdi            #  52    0x400564  3      OPC=shlq_r64_cl     
  callq ._Z3p18i            #  53    0x400567  5      OPC=callq_label     
  cmpl %ebp, %ebx           #  54    0x40056c  2      OPC=cmpl_r32_r32    
  jl .L_400544              #  55    0x40056e  2      OPC=jl_label        
.L_400570:                  #        0x400570  0      OPC=<label>         
  addq $0x8, %rsp           #  56    0x400570  4      OPC=addq_r64_imm8   
  xorl %eax, %eax           #  57    0x400574  2      OPC=xorl_r32_r32    
  popq %rbx                 #  58    0x400576  1      OPC=popq_r64_1      
  popq %rbp                 #  59    0x400577  1      OPC=popq_r64_1      
  popq %r12                 #  60    0x400578  2      OPC=popq_r64_1      
  popq %r13                 #  61    0x40057a  2      OPC=popq_r64_1      
  retq                      #  62    0x40057c  1      OPC=retq            
.L_40057d:                  #        0x40057d  0      OPC=<label>         
  xorl %edi, %edi           #  63    0x40057d  2      OPC=xorl_r32_r32    
  movl $0x400, %ebp         #  64    0x40057f  5      OPC=movl_r32_imm32  
  callq .srand_plt          #  65    0x400584  5      OPC=callq_label     
  jmpq .L_400521            #  66    0x400589  2      OPC=jmpq_label      
                                                                          
.size main, .-main

