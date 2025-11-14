  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x5c0
#! rip-offset  0x4005c0
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x4005c0  0      OPC=<label>         
  movl $0x601057, %eax  #  1     0x4005c0  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x4005c5  1      OPC=pushq_r64_1     
  subq $0x601050, %rax  #  3     0x4005c6  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x4005cc  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x4005d0  3      OPC=movq_r64_r64    
  jbe .L_4005f0         #  6     0x4005d3  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x4005d5  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x4005da  3      OPC=testq_r64_r64   
  je .L_4005f0          #  9     0x4005dd  2      OPC=je_label        
  popq %rbp             #  10    0x4005df  1      OPC=popq_r64_1      
  movl $0x601050, %edi  #  11    0x4005e0  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x4005e5  2      OPC=jmpq_r64        
  nop                   #  13    0x4005e7  1      OPC=nop             
  nop                   #  14    0x4005e8  1      OPC=nop             
  nop                   #  15    0x4005e9  1      OPC=nop             
  nop                   #  16    0x4005ea  1      OPC=nop             
  nop                   #  17    0x4005eb  1      OPC=nop             
  nop                   #  18    0x4005ec  1      OPC=nop             
  nop                   #  19    0x4005ed  1      OPC=nop             
  nop                   #  20    0x4005ee  1      OPC=nop             
  nop                   #  21    0x4005ef  1      OPC=nop             
.L_4005f0:              #        0x4005f0  0      OPC=<label>         
  popq %rbp             #  22    0x4005f0  1      OPC=popq_r64_1      
  retq                  #  23    0x4005f1  1      OPC=retq            
  nop                   #  24    0x4005f2  1      OPC=nop             
  nop                   #  25    0x4005f3  1      OPC=nop             
  nop                   #  26    0x4005f4  1      OPC=nop             
  nop                   #  27    0x4005f5  1      OPC=nop             
  nop                   #  28    0x4005f6  1      OPC=nop             
  nop                   #  29    0x4005f7  1      OPC=nop             
  nop                   #  30    0x4005f8  1      OPC=nop             
  nop                   #  31    0x4005f9  1      OPC=nop             
  nop                   #  32    0x4005fa  1      OPC=nop             
  nop                   #  33    0x4005fb  1      OPC=nop             
  nop                   #  34    0x4005fc  1      OPC=nop             
  nop                   #  35    0x4005fd  1      OPC=nop             
  nop                   #  36    0x4005fe  1      OPC=nop             
  nop                   #  37    0x4005ff  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

