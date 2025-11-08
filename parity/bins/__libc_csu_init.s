  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x600
#! rip-offset  0x400600
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x400600  0      OPC=<label>        
  pushq %r15                 #  1     0x400600  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x400602  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x400605  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x400607  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x40060a  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x40060c  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x40060f  2      OPC=pushq_r64_1    
  leaq 0x2007f8(%rip), %r12  #  8     0x400611  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x400618  1      OPC=pushq_r64_1    
  leaq 0x2007f8(%rip), %rbp  #  10    0x400619  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x400620  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x400621  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x400624  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x400626  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x40062a  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x40062e  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x400633  3      OPC=testq_r64_r64  
  je .L_400656               #  18    0x400636  2      OPC=je_label       
  nop                        #  19    0x400638  1      OPC=nop            
  nop                        #  20    0x400639  1      OPC=nop            
  nop                        #  21    0x40063a  1      OPC=nop            
  nop                        #  22    0x40063b  1      OPC=nop            
  nop                        #  23    0x40063c  1      OPC=nop            
  nop                        #  24    0x40063d  1      OPC=nop            
  nop                        #  25    0x40063e  1      OPC=nop            
  nop                        #  26    0x40063f  1      OPC=nop            
.L_400640:                   #        0x400640  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x400640  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x400643  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x400646  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x400649  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x40064d  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x400651  3      OPC=cmpq_r64_r64   
  jne .L_400640              #  33    0x400654  2      OPC=jne_label      
.L_400656:                   #        0x400656  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x400656  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x40065a  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x40065b  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x40065c  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x40065e  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x400660  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x400662  2      OPC=popq_r64_1     
  retq                       #  41    0x400664  1      OPC=retq           
  nop                        #  42    0x400665  1      OPC=nop            
  nop                        #  43    0x400666  1      OPC=nop            
  nop                        #  44    0x400667  1      OPC=nop            
  nop                        #  45    0x400668  1      OPC=nop            
  nop                        #  46    0x400669  1      OPC=nop            
  nop                        #  47    0x40066a  1      OPC=nop            
  nop                        #  48    0x40066b  1      OPC=nop            
  nop                        #  49    0x40066c  1      OPC=nop            
  nop                        #  50    0x40066d  1      OPC=nop            
  nop                        #  51    0x40066e  1      OPC=nop            
  nop                        #  52    0x40066f  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

