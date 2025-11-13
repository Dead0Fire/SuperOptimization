  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x4f0
#! rip-offset  0x4004f0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x4004f0  0      OPC=<label>         
  movl $0x601187, %eax  #  1     0x4004f0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4004f5  1      OPC=pushq_r64_1     
  subq $0x601180, %rax  #  3     0x4004f6  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x4004fc  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x400500  3      OPC=movq_r64_r64    
  jbe .L_400520         #  6     0x400503  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x400505  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x40050a  3      OPC=testq_r64_r64   
  je .L_400520          #  9     0x40050d  2      OPC=je_label        
  popq %rbp             #  10    0x40050f  1      OPC=popq_r64_1      
  movl $0x601180, %edi  #  11    0x400510  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x400515  2      OPC=jmpq_r64        
  nop                   #  13    0x400517  1      OPC=nop             
  nop                   #  14    0x400518  1      OPC=nop             
  nop                   #  15    0x400519  1      OPC=nop             
  nop                   #  16    0x40051a  1      OPC=nop             
  nop                   #  17    0x40051b  1      OPC=nop             
  nop                   #  18    0x40051c  1      OPC=nop             
  nop                   #  19    0x40051d  1      OPC=nop             
  nop                   #  20    0x40051e  1      OPC=nop             
  nop                   #  21    0x40051f  1      OPC=nop             
.L_400520:              #        0x400520  0      OPC=<label>         
  popq %rbp             #  22    0x400520  1      OPC=popq_r64_1      
  retq                  #  23    0x400521  1      OPC=retq            
  nop                   #  24    0x400522  1      OPC=nop             
  nop                   #  25    0x400523  1      OPC=nop             
  nop                   #  26    0x400524  1      OPC=nop             
  nop                   #  27    0x400525  1      OPC=nop             
  nop                   #  28    0x400526  1      OPC=nop             
  nop                   #  29    0x400527  1      OPC=nop             
  nop                   #  30    0x400528  1      OPC=nop             
  nop                   #  31    0x400529  1      OPC=nop             
  nop                   #  32    0x40052a  1      OPC=nop             
  nop                   #  33    0x40052b  1      OPC=nop             
  nop                   #  34    0x40052c  1      OPC=nop             
  nop                   #  35    0x40052d  1      OPC=nop             
  nop                   #  36    0x40052e  1      OPC=nop             
  nop                   #  37    0x40052f  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

