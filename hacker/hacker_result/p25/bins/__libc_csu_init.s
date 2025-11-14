  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x700
#! rip-offset  0x400700
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x400700  0      OPC=<label>        
  pushq %r15                 #  1     0x400700  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x400702  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x400705  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x400707  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x40070a  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x40070c  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x40070f  2      OPC=pushq_r64_1    
  leaq 0x2006f8(%rip), %r12  #  8     0x400711  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x400718  1      OPC=pushq_r64_1    
  leaq 0x2006f8(%rip), %rbp  #  10    0x400719  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x400720  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x400721  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x400724  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x400726  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x40072a  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x40072e  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x400733  3      OPC=testq_r64_r64  
  je .L_400756               #  18    0x400736  2      OPC=je_label       
  nop                        #  19    0x400738  1      OPC=nop            
  nop                        #  20    0x400739  1      OPC=nop            
  nop                        #  21    0x40073a  1      OPC=nop            
  nop                        #  22    0x40073b  1      OPC=nop            
  nop                        #  23    0x40073c  1      OPC=nop            
  nop                        #  24    0x40073d  1      OPC=nop            
  nop                        #  25    0x40073e  1      OPC=nop            
  nop                        #  26    0x40073f  1      OPC=nop            
.L_400740:                   #        0x400740  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x400740  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x400743  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x400746  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x400749  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x40074d  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x400751  3      OPC=cmpq_r64_r64   
  jne .L_400740              #  33    0x400754  2      OPC=jne_label      
.L_400756:                   #        0x400756  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x400756  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x40075a  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x40075b  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x40075c  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x40075e  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x400760  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x400762  2      OPC=popq_r64_1     
  retq                       #  41    0x400764  1      OPC=retq           
  nop                        #  42    0x400765  1      OPC=nop            
  nop                        #  43    0x400766  1      OPC=nop            
  nop                        #  44    0x400767  1      OPC=nop            
  nop                        #  45    0x400768  1      OPC=nop            
  nop                        #  46    0x400769  1      OPC=nop            
  nop                        #  47    0x40076a  1      OPC=nop            
  nop                        #  48    0x40076b  1      OPC=nop            
  nop                        #  49    0x40076c  1      OPC=nop            
  nop                        #  50    0x40076d  1      OPC=nop            
  nop                        #  51    0x40076e  1      OPC=nop            
  nop                        #  52    0x40076f  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

