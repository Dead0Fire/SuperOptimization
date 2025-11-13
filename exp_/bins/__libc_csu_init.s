  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x680
#! rip-offset  0x400680
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x400680  0      OPC=<label>        
  pushq %r15                 #  1     0x400680  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x400682  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x400685  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x400687  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x40068a  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x40068c  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x40068f  2      OPC=pushq_r64_1    
  leaq 0x200778(%rip), %r12  #  8     0x400691  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x400698  1      OPC=pushq_r64_1    
  leaq 0x200778(%rip), %rbp  #  10    0x400699  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x4006a0  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x4006a1  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x4006a4  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x4006a6  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x4006aa  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x4006ae  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x4006b3  3      OPC=testq_r64_r64  
  je .L_4006d6               #  18    0x4006b6  2      OPC=je_label       
  nop                        #  19    0x4006b8  1      OPC=nop            
  nop                        #  20    0x4006b9  1      OPC=nop            
  nop                        #  21    0x4006ba  1      OPC=nop            
  nop                        #  22    0x4006bb  1      OPC=nop            
  nop                        #  23    0x4006bc  1      OPC=nop            
  nop                        #  24    0x4006bd  1      OPC=nop            
  nop                        #  25    0x4006be  1      OPC=nop            
  nop                        #  26    0x4006bf  1      OPC=nop            
.L_4006c0:                   #        0x4006c0  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x4006c0  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x4006c3  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x4006c6  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x4006c9  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x4006cd  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x4006d1  3      OPC=cmpq_r64_r64   
  jne .L_4006c0              #  33    0x4006d4  2      OPC=jne_label      
.L_4006d6:                   #        0x4006d6  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x4006d6  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x4006da  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x4006db  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x4006dc  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x4006de  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x4006e0  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x4006e2  2      OPC=popq_r64_1     
  retq                       #  41    0x4006e4  1      OPC=retq           
  nop                        #  42    0x4006e5  1      OPC=nop            
  nop                        #  43    0x4006e6  1      OPC=nop            
  nop                        #  44    0x4006e7  1      OPC=nop            
  nop                        #  45    0x4006e8  1      OPC=nop            
  nop                        #  46    0x4006e9  1      OPC=nop            
  nop                        #  47    0x4006ea  1      OPC=nop            
  nop                        #  48    0x4006eb  1      OPC=nop            
  nop                        #  49    0x4006ec  1      OPC=nop            
  nop                        #  50    0x4006ed  1      OPC=nop            
  nop                        #  51    0x4006ee  1      OPC=nop            
  nop                        #  52    0x4006ef  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

