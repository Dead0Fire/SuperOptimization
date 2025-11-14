  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x6b0
#! rip-offset  0x4006b0
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x4006b0  0      OPC=<label>        
  pushq %r15                 #  1     0x4006b0  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x4006b2  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x4006b5  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x4006b7  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x4006ba  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x4006bc  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x4006bf  2      OPC=pushq_r64_1    
  leaq 0x200748(%rip), %r12  #  8     0x4006c1  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x4006c8  1      OPC=pushq_r64_1    
  leaq 0x200748(%rip), %rbp  #  10    0x4006c9  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x4006d0  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x4006d1  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x4006d4  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x4006d6  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x4006da  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x4006de  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x4006e3  3      OPC=testq_r64_r64  
  je .L_400706               #  18    0x4006e6  2      OPC=je_label       
  nop                        #  19    0x4006e8  1      OPC=nop            
  nop                        #  20    0x4006e9  1      OPC=nop            
  nop                        #  21    0x4006ea  1      OPC=nop            
  nop                        #  22    0x4006eb  1      OPC=nop            
  nop                        #  23    0x4006ec  1      OPC=nop            
  nop                        #  24    0x4006ed  1      OPC=nop            
  nop                        #  25    0x4006ee  1      OPC=nop            
  nop                        #  26    0x4006ef  1      OPC=nop            
.L_4006f0:                   #        0x4006f0  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x4006f0  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x4006f3  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x4006f6  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x4006f9  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x4006fd  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x400701  3      OPC=cmpq_r64_r64   
  jne .L_4006f0              #  33    0x400704  2      OPC=jne_label      
.L_400706:                   #        0x400706  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x400706  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x40070a  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x40070b  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x40070c  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x40070e  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x400710  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x400712  2      OPC=popq_r64_1     
  retq                       #  41    0x400714  1      OPC=retq           
  nop                        #  42    0x400715  1      OPC=nop            
  nop                        #  43    0x400716  1      OPC=nop            
  nop                        #  44    0x400717  1      OPC=nop            
  nop                        #  45    0x400718  1      OPC=nop            
  nop                        #  46    0x400719  1      OPC=nop            
  nop                        #  47    0x40071a  1      OPC=nop            
  nop                        #  48    0x40071b  1      OPC=nop            
  nop                        #  49    0x40071c  1      OPC=nop            
  nop                        #  50    0x40071d  1      OPC=nop            
  nop                        #  51    0x40071e  1      OPC=nop            
  nop                        #  52    0x40071f  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

