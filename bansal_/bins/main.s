  .text
  .globl main
  .type main, @function

#! file-offset 0x630
#! rip-offset  0x400630
#! capacity    132 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.main:                      #        0x400630  0      OPC=<label>         
  cmpl $0x1, %edi           #  1     0x400630  3      OPC=cmpl_r32_imm8   
  pushq %r12                #  2     0x400633  2      OPC=pushq_r64_1     
  pushq %rbp                #  3     0x400635  1      OPC=pushq_r64_1     
  movl %edi, %ebp           #  4     0x400636  2      OPC=movl_r32_r32    
  pushq %rbx                #  5     0x400638  1      OPC=pushq_r64_1     
  jle .L_4006ab             #  6     0x400639  2      OPC=jle_label       
  movq 0x8(%rsi), %rdi      #  7     0x40063b  4      OPC=movq_r64_m64    
  movq %rsi, %r12           #  8     0x40063f  3      OPC=movq_r64_r64    
  movl $0xa, %edx           #  9     0x400642  5      OPC=movl_r32_imm32  
  xorl %esi, %esi           #  10    0x400647  2      OPC=xorl_r32_r32    
  callq .strtol_plt         #  11    0x400649  5      OPC=callq_label     
  xorl %edi, %edi           #  12    0x40064e  2      OPC=xorl_r32_r32    
  cmpl $0x2, %ebp           #  13    0x400650  3      OPC=cmpl_r32_imm8   
  movl %eax, %ebx           #  14    0x400653  2      OPC=movl_r32_r32    
  je .L_40066a              #  15    0x400655  2      OPC=je_label        
  movq 0x10(%r12), %rdi     #  16    0x400657  5      OPC=movq_r64_m64    
  movl $0xa, %edx           #  17    0x40065c  5      OPC=movl_r32_imm32  
  xorl %esi, %esi           #  18    0x400661  2      OPC=xorl_r32_r32    
  callq .strtol_plt         #  19    0x400663  5      OPC=callq_label     
  movl %eax, %edi           #  20    0x400668  2      OPC=movl_r32_r32    
.L_40066a:                  #        0x40066a  0      OPC=<label>         
  callq .srand_plt          #  21    0x40066a  5      OPC=callq_label     
  movslq %ebx, %rdi         #  22    0x40066f  3      OPC=movslq_r64_r32  
  callq ._Z8new_listm       #  23    0x400672  5      OPC=callq_label     
  movq %rax, %rbx           #  24    0x400677  3      OPC=movq_r64_r64    
  movq %rax, %rdi           #  25    0x40067a  3      OPC=movq_r64_r64    
  callq ._Z8traverseP4Node  #  26    0x40067d  5      OPC=callq_label     
  testq %rbx, %rbx          #  27    0x400682  3      OPC=testq_r64_r64   
  je .L_4006a4              #  28    0x400685  2      OPC=je_label        
  nop                       #  29    0x400687  1      OPC=nop             
  nop                       #  30    0x400688  1      OPC=nop             
  nop                       #  31    0x400689  1      OPC=nop             
  nop                       #  32    0x40068a  1      OPC=nop             
  nop                       #  33    0x40068b  1      OPC=nop             
  nop                       #  34    0x40068c  1      OPC=nop             
  nop                       #  35    0x40068d  1      OPC=nop             
  nop                       #  36    0x40068e  1      OPC=nop             
  nop                       #  37    0x40068f  1      OPC=nop             
.L_400690:                  #        0x400690  0      OPC=<label>         
  movq 0x8(%rbx), %rbp      #  38    0x400690  4      OPC=movq_r64_m64    
  movq %rbx, %rdi           #  39    0x400694  3      OPC=movq_r64_r64    
  callq ._ZdlPv_plt         #  40    0x400697  5      OPC=callq_label     
  testq %rbp, %rbp          #  41    0x40069c  3      OPC=testq_r64_r64   
  movq %rbp, %rbx           #  42    0x40069f  3      OPC=movq_r64_r64    
  jne .L_400690             #  43    0x4006a2  2      OPC=jne_label       
.L_4006a4:                  #        0x4006a4  0      OPC=<label>         
  popq %rbx                 #  44    0x4006a4  1      OPC=popq_r64_1      
  xorl %eax, %eax           #  45    0x4006a5  2      OPC=xorl_r32_r32    
  popq %rbp                 #  46    0x4006a7  1      OPC=popq_r64_1      
  popq %r12                 #  47    0x4006a8  2      OPC=popq_r64_1      
  retq                      #  48    0x4006aa  1      OPC=retq            
.L_4006ab:                  #        0x4006ab  0      OPC=<label>         
  movl $0x400, %ebx         #  49    0x4006ab  5      OPC=movl_r32_imm32  
  xorl %edi, %edi           #  50    0x4006b0  2      OPC=xorl_r32_r32    
  jmpq .L_40066a            #  51    0x4006b2  2      OPC=jmpq_label      
                                                                          
.size main, .-main

