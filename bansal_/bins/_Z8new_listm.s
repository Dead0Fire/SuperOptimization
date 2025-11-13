  .text
  .globl _Z8new_listm
  .type _Z8new_listm, @function

#! file-offset 0x7b0
#! rip-offset  0x4007b0
#! capacity    128 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
._Z8new_listm:          #        0x4007b0  0      OPC=<label>         
  pushq %r14            #  1     0x4007b0  2      OPC=pushq_r64_1     
  pushq %r13            #  2     0x4007b2  2      OPC=pushq_r64_1     
  movq %rdi, %r13       #  3     0x4007b4  3      OPC=movq_r64_r64    
  pushq %r12            #  4     0x4007b7  2      OPC=pushq_r64_1     
  pushq %rbp            #  5     0x4007b9  1      OPC=pushq_r64_1     
  pushq %rbx            #  6     0x4007ba  1      OPC=pushq_r64_1     
  callq .rand_plt       #  7     0x4007bb  5      OPC=callq_label     
  movl $0x10, %edi      #  8     0x4007c0  5      OPC=movl_r32_imm32  
  movl %eax, %ebx       #  9     0x4007c5  2      OPC=movl_r32_r32    
  callq ._Znwm_plt      #  10    0x4007c7  5      OPC=callq_label     
  cmpq $0x1, %r13       #  11    0x4007cc  4      OPC=cmpq_r64_imm8   
  movq %rax, %r14       #  12    0x4007d0  3      OPC=movq_r64_r64    
  movl %ebx, (%rax)     #  13    0x4007d3  2      OPC=movl_m32_r32    
  movq $0x0, 0x8(%rax)  #  14    0x4007d5  8      OPC=movq_m64_imm32  
  jbe .L_40081d         #  15    0x4007dd  2      OPC=jbe_label       
  subq $0x1, %r13       #  16    0x4007df  4      OPC=subq_r64_imm8   
  movq %rax, %rbp       #  17    0x4007e3  3      OPC=movq_r64_r64    
  xorl %ebx, %ebx       #  18    0x4007e6  2      OPC=xorl_r32_r32    
  nop                   #  19    0x4007e8  1      OPC=nop             
  nop                   #  20    0x4007e9  1      OPC=nop             
  nop                   #  21    0x4007ea  1      OPC=nop             
  nop                   #  22    0x4007eb  1      OPC=nop             
  nop                   #  23    0x4007ec  1      OPC=nop             
  nop                   #  24    0x4007ed  1      OPC=nop             
  nop                   #  25    0x4007ee  1      OPC=nop             
  nop                   #  26    0x4007ef  1      OPC=nop             
.L_4007f0:              #        0x4007f0  0      OPC=<label>         
  callq .rand_plt       #  27    0x4007f0  5      OPC=callq_label     
  addq $0x1, %rbx       #  28    0x4007f5  4      OPC=addq_r64_imm8   
  movl $0x10, %edi      #  29    0x4007f9  5      OPC=movl_r32_imm32  
  movl %eax, %r12d      #  30    0x4007fe  3      OPC=movl_r32_r32    
  callq ._Znwm_plt      #  31    0x400801  5      OPC=callq_label     
  cmpq %r13, %rbx       #  32    0x400806  3      OPC=cmpq_r64_r64    
  movl %r12d, (%rax)    #  33    0x400809  3      OPC=movl_m32_r32    
  movq $0x0, 0x8(%rax)  #  34    0x40080c  8      OPC=movq_m64_imm32  
  movq %rax, 0x8(%rbp)  #  35    0x400814  4      OPC=movq_m64_r64    
  movq %rax, %rbp       #  36    0x400818  3      OPC=movq_r64_r64    
  jne .L_4007f0         #  37    0x40081b  2      OPC=jne_label       
.L_40081d:              #        0x40081d  0      OPC=<label>         
  popq %rbx             #  38    0x40081d  1      OPC=popq_r64_1      
  movq %r14, %rax       #  39    0x40081e  3      OPC=movq_r64_r64    
  popq %rbp             #  40    0x400821  1      OPC=popq_r64_1      
  popq %r12             #  41    0x400822  2      OPC=popq_r64_1      
  popq %r13             #  42    0x400824  2      OPC=popq_r64_1      
  popq %r14             #  43    0x400826  2      OPC=popq_r64_1      
  retq                  #  44    0x400828  1      OPC=retq            
  nop                   #  45    0x400829  1      OPC=nop             
  nop                   #  46    0x40082a  1      OPC=nop             
  nop                   #  47    0x40082b  1      OPC=nop             
  nop                   #  48    0x40082c  1      OPC=nop             
  nop                   #  49    0x40082d  1      OPC=nop             
  nop                   #  50    0x40082e  1      OPC=nop             
  nop                   #  51    0x40082f  1      OPC=nop             
                                                                      
.size _Z8new_listm, .-_Z8new_listm

