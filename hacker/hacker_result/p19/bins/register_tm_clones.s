  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x5d0
#! rip-offset  0x4005d0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.register_tm_clones:    #        0x4005d0  0      OPC=<label>         
  movl $0x601050, %esi  #  1     0x4005d0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4005d5  1      OPC=pushq_r64_1     
  subq $0x601050, %rsi  #  3     0x4005d6  7      OPC=subq_r64_imm32  
  sarq $0x3, %rsi       #  4     0x4005dd  4      OPC=sarq_r64_imm8   
  movq %rsp, %rbp       #  5     0x4005e1  3      OPC=movq_r64_r64    
  movq %rsi, %rax       #  6     0x4005e4  3      OPC=movq_r64_r64    
  shrq $0x3f, %rax      #  7     0x4005e7  4      OPC=shrq_r64_imm8   
  addq %rax, %rsi       #  8     0x4005eb  3      OPC=addq_r64_r64    
  sarq $0x1, %rsi       #  9     0x4005ee  3      OPC=sarq_r64_one    
  je .L_400608          #  10    0x4005f1  2      OPC=je_label        
  movl $0x0, %eax       #  11    0x4005f3  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  12    0x4005f8  3      OPC=testq_r64_r64   
  je .L_400608          #  13    0x4005fb  2      OPC=je_label        
  popq %rbp             #  14    0x4005fd  1      OPC=popq_r64_1      
  movl $0x601050, %edi  #  15    0x4005fe  5      OPC=movl_r32_imm32  
  jmpq %rax             #  16    0x400603  2      OPC=jmpq_r64        
  nop                   #  17    0x400605  1      OPC=nop             
  nop                   #  18    0x400606  1      OPC=nop             
  nop                   #  19    0x400607  1      OPC=nop             
.L_400608:              #        0x400608  0      OPC=<label>         
  popq %rbp             #  20    0x400608  1      OPC=popq_r64_1      
  retq                  #  21    0x400609  1      OPC=retq            
  nop                   #  22    0x40060a  1      OPC=nop             
  nop                   #  23    0x40060b  1      OPC=nop             
  nop                   #  24    0x40060c  1      OPC=nop             
  nop                   #  25    0x40060d  1      OPC=nop             
  nop                   #  26    0x40060e  1      OPC=nop             
  nop                   #  27    0x40060f  1      OPC=nop             
                                                                      
.size register_tm_clones, .-register_tm_clones

