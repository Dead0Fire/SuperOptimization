  .text
  .globl _Z9free_listP4Node
  .type _Z9free_listP4Node, @function

#! file-offset 0x830
#! rip-offset  0x400830
#! capacity    36 bytes

# Text                  #  Line  RIP       Bytes  Opcode             
._Z9free_listP4Node:    #        0x400830  0      OPC=<label>        
  testq %rdi, %rdi      #  1     0x400830  3      OPC=testq_r64_r64  
  je .L_400852          #  2     0x400833  2      OPC=je_label       
  pushq %rbx            #  3     0x400835  1      OPC=pushq_r64_1    
  nop                   #  4     0x400836  1      OPC=nop            
  nop                   #  5     0x400837  1      OPC=nop            
  nop                   #  6     0x400838  1      OPC=nop            
  nop                   #  7     0x400839  1      OPC=nop            
  nop                   #  8     0x40083a  1      OPC=nop            
  nop                   #  9     0x40083b  1      OPC=nop            
  nop                   #  10    0x40083c  1      OPC=nop            
  nop                   #  11    0x40083d  1      OPC=nop            
  nop                   #  12    0x40083e  1      OPC=nop            
  nop                   #  13    0x40083f  1      OPC=nop            
.L_400840:              #        0x400840  0      OPC=<label>        
  movq 0x8(%rdi), %rbx  #  14    0x400840  4      OPC=movq_r64_m64   
  callq ._ZdlPv_plt     #  15    0x400844  5      OPC=callq_label    
  testq %rbx, %rbx      #  16    0x400849  3      OPC=testq_r64_r64  
  movq %rbx, %rdi       #  17    0x40084c  3      OPC=movq_r64_r64   
  jne .L_400840         #  18    0x40084f  2      OPC=jne_label      
  popq %rbx             #  19    0x400851  1      OPC=popq_r64_1     
.L_400852:              #        0x400852  0      OPC=<label>        
  nop                   #  20    0x400852  1      OPC=nop            
  retq                  #  21    0x400853  1      OPC=retq           
                                                                     
.size _Z9free_listP4Node, .-_Z9free_listP4Node

