  .text
  .globl _Z8traverseP4Node
  .type _Z8traverseP4Node, @function

#! file-offset 0x854
#! rip-offset  0x400854
#! capacity    60 bytes

# Text                      #  Line  RIP       Bytes  Opcode             
._Z8traverseP4Node:         #        0x400854  0      OPC=<label>        
  pushq %rbp                #  1     0x400854  1      OPC=pushq_r64_1    
  movq %rsp, %rbp           #  2     0x400855  3      OPC=movq_r64_r64   
  movq %rdi, -0x8(%rbp)     #  3     0x400858  4      OPC=movq_m64_r64   
  jmpq .L_400879            #  4     0x40085c  2      OPC=jmpq_label     
.L_40085e:                  #        0x40085e  0      OPC=<label>        
  movq -0x8(%rbp), %rax     #  5     0x40085e  4      OPC=movq_r64_m64   
  movl (%rax), %eax         #  6     0x400862  2      OPC=movl_r32_m32   
  leal (%rax,%rax,1), %edx  #  7     0x400864  3      OPC=leal_r32_m16   
  movq -0x8(%rbp), %rax     #  8     0x400867  4      OPC=movq_r64_m64   
  movl %edx, (%rax)         #  9     0x40086b  2      OPC=movl_m32_r32   
  movq -0x8(%rbp), %rax     #  10    0x40086d  4      OPC=movq_r64_m64   
  movq 0x8(%rax), %rax      #  11    0x400871  4      OPC=movq_r64_m64   
  movq %rax, -0x8(%rbp)     #  12    0x400875  4      OPC=movq_m64_r64   
.L_400879:                  #        0x400879  0      OPC=<label>        
  cmpq $0x0, -0x8(%rbp)     #  13    0x400879  5      OPC=cmpq_m64_imm8  
  jne .L_40085e             #  14    0x40087e  2      OPC=jne_label      
  popq %rbp                 #  15    0x400880  1      OPC=popq_r64_1     
  retq                      #  16    0x400881  1      OPC=retq           
  nop                       #  17    0x400882  1      OPC=nop            
  nop                       #  18    0x400883  1      OPC=nop            
  nop                       #  19    0x400884  1      OPC=nop            
  nop                       #  20    0x400885  1      OPC=nop            
  nop                       #  21    0x400886  1      OPC=nop            
  nop                       #  22    0x400887  1      OPC=nop            
  nop                       #  23    0x400888  1      OPC=nop            
  nop                       #  24    0x400889  1      OPC=nop            
  nop                       #  25    0x40088a  1      OPC=nop            
  nop                       #  26    0x40088b  1      OPC=nop            
  nop                       #  27    0x40088c  1      OPC=nop            
  nop                       #  28    0x40088d  1      OPC=nop            
  nop                       #  29    0x40088e  1      OPC=nop            
  nop                       #  30    0x40088f  1      OPC=nop            
                                                                         
.size _Z8traverseP4Node, .-_Z8traverseP4Node

