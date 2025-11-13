  .text
  .globl register_tm_clones
  .type register_tm_clones, @function

#! file-offset 0x500
#! rip-offset  0x400500
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.register_tm_clones:    #        0x400500  0      OPC=<label>         
  movl $0x601040, %esi  #  1     0x400500  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x400505  1      OPC=pushq_r64_1     
  subq $0x601040, %rsi  #  3     0x400506  7      OPC=subq_r64_imm32  
  sarq $0x3, %rsi       #  4     0x40050d  4      OPC=sarq_r64_imm8   
  movq %rsp, %rbp       #  5     0x400511  3      OPC=movq_r64_r64    
  movq %rsi, %rax       #  6     0x400514  3      OPC=movq_r64_r64    
  shrq $0x3f, %rax      #  7     0x400517  4      OPC=shrq_r64_imm8   
  addq %rax, %rsi       #  8     0x40051b  3      OPC=addq_r64_r64    
  sarq $0x1, %rsi       #  9     0x40051e  3      OPC=sarq_r64_one    
  je .L_400538          #  10    0x400521  2      OPC=je_label        
  movl $0x0, %eax       #  11    0x400523  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  12    0x400528  3      OPC=testq_r64_r64   
  je .L_400538          #  13    0x40052b  2      OPC=je_label        
  popq %rbp             #  14    0x40052d  1      OPC=popq_r64_1      
  movl $0x601040, %edi  #  15    0x40052e  5      OPC=movl_r32_imm32  
  jmpq %rax             #  16    0x400533  2      OPC=jmpq_r64        
  nop                   #  17    0x400535  1      OPC=nop             
  nop                   #  18    0x400536  1      OPC=nop             
  nop                   #  19    0x400537  1      OPC=nop             
.L_400538:              #        0x400538  0      OPC=<label>         
  popq %rbp             #  20    0x400538  1      OPC=popq_r64_1      
  retq                  #  21    0x400539  1      OPC=retq            
  nop                   #  22    0x40053a  1      OPC=nop             
  nop                   #  23    0x40053b  1      OPC=nop             
  nop                   #  24    0x40053c  1      OPC=nop             
  nop                   #  25    0x40053d  1      OPC=nop             
  nop                   #  26    0x40053e  1      OPC=nop             
  nop                   #  27    0x40053f  1      OPC=nop             
                                                                      
.size register_tm_clones, .-register_tm_clones

