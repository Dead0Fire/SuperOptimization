  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x6e0
#! rip-offset  0x4006e0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x4006e0  0      OPC=<label>         
  movl $0x601067, %eax  #  1     0x4006e0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4006e5  1      OPC=pushq_r64_1     
  subq $0x601060, %rax  #  3     0x4006e6  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x4006ec  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x4006f0  3      OPC=movq_r64_r64    
  jbe .L_400710         #  6     0x4006f3  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x4006f5  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x4006fa  3      OPC=testq_r64_r64   
  je .L_400710          #  9     0x4006fd  2      OPC=je_label        
  popq %rbp             #  10    0x4006ff  1      OPC=popq_r64_1      
  movl $0x601060, %edi  #  11    0x400700  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x400705  2      OPC=jmpq_r64        
  nop                   #  13    0x400707  1      OPC=nop             
  nop                   #  14    0x400708  1      OPC=nop             
  nop                   #  15    0x400709  1      OPC=nop             
  nop                   #  16    0x40070a  1      OPC=nop             
  nop                   #  17    0x40070b  1      OPC=nop             
  nop                   #  18    0x40070c  1      OPC=nop             
  nop                   #  19    0x40070d  1      OPC=nop             
  nop                   #  20    0x40070e  1      OPC=nop             
  nop                   #  21    0x40070f  1      OPC=nop             
.L_400710:              #        0x400710  0      OPC=<label>         
  popq %rbp             #  22    0x400710  1      OPC=popq_r64_1      
  retq                  #  23    0x400711  1      OPC=retq            
  nop                   #  24    0x400712  1      OPC=nop             
  nop                   #  25    0x400713  1      OPC=nop             
  nop                   #  26    0x400714  1      OPC=nop             
  nop                   #  27    0x400715  1      OPC=nop             
  nop                   #  28    0x400716  1      OPC=nop             
  nop                   #  29    0x400717  1      OPC=nop             
  nop                   #  30    0x400718  1      OPC=nop             
  nop                   #  31    0x400719  1      OPC=nop             
  nop                   #  32    0x40071a  1      OPC=nop             
  nop                   #  33    0x40071b  1      OPC=nop             
  nop                   #  34    0x40071c  1      OPC=nop             
  nop                   #  35    0x40071d  1      OPC=nop             
  nop                   #  36    0x40071e  1      OPC=nop             
  nop                   #  37    0x40071f  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

