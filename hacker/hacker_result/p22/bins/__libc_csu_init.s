  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x6a0
#! rip-offset  0x4006a0
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x4006a0  0      OPC=<label>        
  pushq %r15                 #  1     0x4006a0  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x4006a2  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x4006a5  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x4006a7  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x4006aa  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x4006ac  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x4006af  2      OPC=pushq_r64_1    
  leaq 0x200758(%rip), %r12  #  8     0x4006b1  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x4006b8  1      OPC=pushq_r64_1    
  leaq 0x200758(%rip), %rbp  #  10    0x4006b9  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x4006c0  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x4006c1  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x4006c4  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x4006c6  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x4006ca  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x4006ce  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x4006d3  3      OPC=testq_r64_r64  
  je .L_4006f6               #  18    0x4006d6  2      OPC=je_label       
  nop                        #  19    0x4006d8  1      OPC=nop            
  nop                        #  20    0x4006d9  1      OPC=nop            
  nop                        #  21    0x4006da  1      OPC=nop            
  nop                        #  22    0x4006db  1      OPC=nop            
  nop                        #  23    0x4006dc  1      OPC=nop            
  nop                        #  24    0x4006dd  1      OPC=nop            
  nop                        #  25    0x4006de  1      OPC=nop            
  nop                        #  26    0x4006df  1      OPC=nop            
.L_4006e0:                   #        0x4006e0  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x4006e0  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x4006e3  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x4006e6  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x4006e9  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x4006ed  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x4006f1  3      OPC=cmpq_r64_r64   
  jne .L_4006e0              #  33    0x4006f4  2      OPC=jne_label      
.L_4006f6:                   #        0x4006f6  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x4006f6  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x4006fa  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x4006fb  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x4006fc  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x4006fe  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x400700  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x400702  2      OPC=popq_r64_1     
  retq                       #  41    0x400704  1      OPC=retq           
  nop                        #  42    0x400705  1      OPC=nop            
  nop                        #  43    0x400706  1      OPC=nop            
  nop                        #  44    0x400707  1      OPC=nop            
  nop                        #  45    0x400708  1      OPC=nop            
  nop                        #  46    0x400709  1      OPC=nop            
  nop                        #  47    0x40070a  1      OPC=nop            
  nop                        #  48    0x40070b  1      OPC=nop            
  nop                        #  49    0x40070c  1      OPC=nop            
  nop                        #  50    0x40070d  1      OPC=nop            
  nop                        #  51    0x40070e  1      OPC=nop            
  nop                        #  52    0x40070f  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

