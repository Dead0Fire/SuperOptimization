  .text
  .globl __libc_csu_init
  .type __libc_csu_init, @function

#! file-offset 0x660
#! rip-offset  0x400660
#! capacity    112 bytes

# Text                       #  Line  RIP       Bytes  Opcode             
.__libc_csu_init:            #        0x400660  0      OPC=<label>        
  pushq %r15                 #  1     0x400660  2      OPC=pushq_r64_1    
  movl %edi, %r15d           #  2     0x400662  3      OPC=movl_r32_r32   
  pushq %r14                 #  3     0x400665  2      OPC=pushq_r64_1    
  movq %rsi, %r14            #  4     0x400667  3      OPC=movq_r64_r64   
  pushq %r13                 #  5     0x40066a  2      OPC=pushq_r64_1    
  movq %rdx, %r13            #  6     0x40066c  3      OPC=movq_r64_r64   
  pushq %r12                 #  7     0x40066f  2      OPC=pushq_r64_1    
  leaq 0x200798(%rip), %r12  #  8     0x400671  7      OPC=leaq_r64_m16   
  pushq %rbp                 #  9     0x400678  1      OPC=pushq_r64_1    
  leaq 0x200798(%rip), %rbp  #  10    0x400679  7      OPC=leaq_r64_m16   
  pushq %rbx                 #  11    0x400680  1      OPC=pushq_r64_1    
  subq %r12, %rbp            #  12    0x400681  3      OPC=subq_r64_r64   
  xorl %ebx, %ebx            #  13    0x400684  2      OPC=xorl_r32_r32   
  sarq $0x3, %rbp            #  14    0x400686  4      OPC=sarq_r64_imm8  
  subq $0x8, %rsp            #  15    0x40068a  4      OPC=subq_r64_imm8  
  callq ._init               #  16    0x40068e  5      OPC=callq_label    
  testq %rbp, %rbp           #  17    0x400693  3      OPC=testq_r64_r64  
  je .L_4006b6               #  18    0x400696  2      OPC=je_label       
  nop                        #  19    0x400698  1      OPC=nop            
  nop                        #  20    0x400699  1      OPC=nop            
  nop                        #  21    0x40069a  1      OPC=nop            
  nop                        #  22    0x40069b  1      OPC=nop            
  nop                        #  23    0x40069c  1      OPC=nop            
  nop                        #  24    0x40069d  1      OPC=nop            
  nop                        #  25    0x40069e  1      OPC=nop            
  nop                        #  26    0x40069f  1      OPC=nop            
.L_4006a0:                   #        0x4006a0  0      OPC=<label>        
  movq %r13, %rdx            #  27    0x4006a0  3      OPC=movq_r64_r64   
  movq %r14, %rsi            #  28    0x4006a3  3      OPC=movq_r64_r64   
  movl %r15d, %edi           #  29    0x4006a6  3      OPC=movl_r32_r32   
  callq (%r12,%rbx,8)        #  30    0x4006a9  4      OPC=callq_m64      
  addq $0x1, %rbx            #  31    0x4006ad  4      OPC=addq_r64_imm8  
  cmpq %rbp, %rbx            #  32    0x4006b1  3      OPC=cmpq_r64_r64   
  jne .L_4006a0              #  33    0x4006b4  2      OPC=jne_label      
.L_4006b6:                   #        0x4006b6  0      OPC=<label>        
  addq $0x8, %rsp            #  34    0x4006b6  4      OPC=addq_r64_imm8  
  popq %rbx                  #  35    0x4006ba  1      OPC=popq_r64_1     
  popq %rbp                  #  36    0x4006bb  1      OPC=popq_r64_1     
  popq %r12                  #  37    0x4006bc  2      OPC=popq_r64_1     
  popq %r13                  #  38    0x4006be  2      OPC=popq_r64_1     
  popq %r14                  #  39    0x4006c0  2      OPC=popq_r64_1     
  popq %r15                  #  40    0x4006c2  2      OPC=popq_r64_1     
  retq                       #  41    0x4006c4  1      OPC=retq           
  nop                        #  42    0x4006c5  1      OPC=nop            
  nop                        #  43    0x4006c6  1      OPC=nop            
  nop                        #  44    0x4006c7  1      OPC=nop            
  nop                        #  45    0x4006c8  1      OPC=nop            
  nop                        #  46    0x4006c9  1      OPC=nop            
  nop                        #  47    0x4006ca  1      OPC=nop            
  nop                        #  48    0x4006cb  1      OPC=nop            
  nop                        #  49    0x4006cc  1      OPC=nop            
  nop                        #  50    0x4006cd  1      OPC=nop            
  nop                        #  51    0x4006ce  1      OPC=nop            
  nop                        #  52    0x4006cf  1      OPC=nop            
                                                                          
.size __libc_csu_init, .-__libc_csu_init

