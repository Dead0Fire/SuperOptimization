  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x670
#! rip-offset  0x400670
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x400670  0      OPC=<label>        
  pushq %r15                 #  1     0x400670  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x400672  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x400675  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x400677  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x40067a  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x40067c  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x40067f  2      OPC=pushq_r64_1    
  leaq 0x200788(%rip), %r12  #  8     0x400681  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x400688  1      OPC=pushq_r64_1    
  leaq 0x200788(%rip), %rbp  #  10    0x400689  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x400690  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x400691  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x400694  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x400696  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x40069a  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x40069e  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x4006a3  3      OPC=testq_r64_r64  
  je .L_4006c6               #  18    0x4006a6  2      OPC=je_label       
  nop                        #  19    0x4006a8  1      OPC=nop            
  nop                        #  20    0x4006a9  1      OPC=nop            
  nop                        #  21    0x4006aa  1      OPC=nop            
  nop                        #  22    0x4006ab  1      OPC=nop            
  nop                        #  23    0x4006ac  1      OPC=nop            
  nop                        #  24    0x4006ad  1      OPC=nop            
  nop                        #  25    0x4006ae  1      OPC=nop            
  nop                        #  26    0x4006af  1      OPC=nop            
.L_4006b0:                   #        0x4006b0  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x4006b0  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x4006b3  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x4006b6  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x4006b9  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x4006bd  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x4006c1  3      OPC=cmpq_r64_r64   
  jne .L_4006b0              #  33    0x4006c4  2      OPC=jne_label      
.L_4006c6:                   #        0x4006c6  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x4006c6  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x4006ca  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x4006cb  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x4006cc  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x4006ce  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x4006d0  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x4006d2  2      OPC=popq_r64_1     
  retq                       #  41    0x4006d4  1      OPC=retq           
  nop                        #  42    0x4006d5  1      OPC=nop            
  nop                        #  43    0x4006d6  1      OPC=nop            
  nop                        #  44    0x4006d7  1      OPC=nop            
  nop                        #  45    0x4006d8  1      OPC=nop            
  nop                        #  46    0x4006d9  1      OPC=nop            
  nop                        #  47    0x4006da  1      OPC=nop            
  nop                        #  48    0x4006db  1      OPC=nop            
  nop                        #  49    0x4006dc  1      OPC=nop            
  nop                        #  50    0x4006dd  1      OPC=nop            
  nop                        #  51    0x4006de  1      OPC=nop            
  nop                        #  52    0x4006df  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

