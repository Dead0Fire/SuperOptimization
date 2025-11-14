  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x530
#! rip-offset  0x400530
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.register_tm_clones:    #        0x400530  0      OPC=<label>         
  movl $0x601180, %esi  #  1     0x400530  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x400535  1      OPC=pushq_r64_1     
  subq $0x601180, %rsi  #  3     0x400536  7      OPC=subq_r64_imm32  
  sarq $0x3, %rsi       #  4     0x40053d  4      OPC=sarq_r64_imm8   
  movq %rsp, %rbp       #  5     0x400541  3      OPC=movq_r64_r64    
  movq %rsi, %rax       #  6     0x400544  3      OPC=movq_r64_r64    
  shrq $0x3f, %rax      #  7     0x400547  4      OPC=shrq_r64_imm8   
  addq %rax, %rsi       #  8     0x40054b  3      OPC=addq_r64_r64    
  sarq $0x1, %rsi       #  9     0x40054e  3      OPC=sarq_r64_one    
  je .L_400568          #  10    0x400551  2      OPC=je_label        
  movl $0x0, %eax       #  11    0x400553  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  12    0x400558  3      OPC=testq_r64_r64   
  je .L_400568          #  13    0x40055b  2      OPC=je_label        
  popq %rbp             #  14    0x40055d  1      OPC=popq_r64_1      
  movl $0x601180, %edi  #  15    0x40055e  5      OPC=movl_r32_imm32  
  jmpq %rax             #  16    0x400563  2      OPC=jmpq_r64        
  nop                   #  17    0x400565  1      OPC=nop             
  nop                   #  18    0x400566  1      OPC=nop             
  nop                   #  19    0x400567  1      OPC=nop             
.L_400568:              #        0x400568  0      OPC=<label>         
  popq %rbp             #  20    0x400568  1      OPC=popq_r64_1      
  retq                  #  21    0x400569  1      OPC=retq            
  nop                   #  22    0x40056a  1      OPC=nop             
  nop                   #  23    0x40056b  1      OPC=nop             
  nop                   #  24    0x40056c  1      OPC=nop             
  nop                   #  25    0x40056d  1      OPC=nop             
  nop                   #  26    0x40056e  1      OPC=nop             
  nop                   #  27    0x40056f  1      OPC=nop             
                                                                      
.size register_tm_clones, .-register_tm_clones

