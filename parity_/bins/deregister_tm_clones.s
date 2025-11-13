  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x4c0
#! rip-offset  0x4004c0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x4004c0  0      OPC=<label>         
  movl $0x601047, %eax  #  1     0x4004c0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4004c5  1      OPC=pushq_r64_1     
  subq $0x601040, %rax  #  3     0x4004c6  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x4004cc  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x4004d0  3      OPC=movq_r64_r64    
  jbe .L_4004f0         #  6     0x4004d3  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x4004d5  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x4004da  3      OPC=testq_r64_r64   
  je .L_4004f0          #  9     0x4004dd  2      OPC=je_label        
  popq %rbp             #  10    0x4004df  1      OPC=popq_r64_1      
  movl $0x601040, %edi  #  11    0x4004e0  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x4004e5  2      OPC=jmpq_r64        
  nop                   #  13    0x4004e7  1      OPC=nop             
  nop                   #  14    0x4004e8  1      OPC=nop             
  nop                   #  15    0x4004e9  1      OPC=nop             
  nop                   #  16    0x4004ea  1      OPC=nop             
  nop                   #  17    0x4004eb  1      OPC=nop             
  nop                   #  18    0x4004ec  1      OPC=nop             
  nop                   #  19    0x4004ed  1      OPC=nop             
  nop                   #  20    0x4004ee  1      OPC=nop             
  nop                   #  21    0x4004ef  1      OPC=nop             
.L_4004f0:              #        0x4004f0  0      OPC=<label>         
  popq %rbp             #  22    0x4004f0  1      OPC=popq_r64_1      
  retq                  #  23    0x4004f1  1      OPC=retq            
  nop                   #  24    0x4004f2  1      OPC=nop             
  nop                   #  25    0x4004f3  1      OPC=nop             
  nop                   #  26    0x4004f4  1      OPC=nop             
  nop                   #  27    0x4004f5  1      OPC=nop             
  nop                   #  28    0x4004f6  1      OPC=nop             
  nop                   #  29    0x4004f7  1      OPC=nop             
  nop                   #  30    0x4004f8  1      OPC=nop             
  nop                   #  31    0x4004f9  1      OPC=nop             
  nop                   #  32    0x4004fa  1      OPC=nop             
  nop                   #  33    0x4004fb  1      OPC=nop             
  nop                   #  34    0x4004fc  1      OPC=nop             
  nop                   #  35    0x4004fd  1      OPC=nop             
  nop                   #  36    0x4004fe  1      OPC=nop             
  nop                   #  37    0x4004ff  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

