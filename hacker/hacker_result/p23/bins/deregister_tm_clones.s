  .text
  .globl deregister_tm_clones
  .type deregister_tm_clones, @function

#! file-offset 0x580
#! rip-offset  0x400580
#! capacity    64 bytes

# Text                  #  Line  RIP       Bytes  Opcode              
.deregister_tm_clones:  #        0x400580  0      OPC=<label>         
  movl $0x601057, %eax  #  1     0x400580  5      OPC=movl_r32_imm32  
  pushq %rbp            #  2     0x400585  1      OPC=pushq_r64_1     
  subq $0x601050, %rax  #  3     0x400586  6      OPC=subq_rax_imm32  
  cmpq $0xe, %rax       #  4     0x40058c  4      OPC=cmpq_r64_imm8   
  movq %rsp, %rbp       #  5     0x400590  3      OPC=movq_r64_r64    
  jbe .L_4005b0         #  6     0x400593  2      OPC=jbe_label       
  movl $0x0, %eax       #  7     0x400595  5      OPC=movl_r32_imm32  
  testq %rax, %rax      #  8     0x40059a  3      OPC=testq_r64_r64   
  je .L_4005b0          #  9     0x40059d  2      OPC=je_label        
  popq %rbp             #  10    0x40059f  1      OPC=popq_r64_1      
  movl $0x601050, %edi  #  11    0x4005a0  5      OPC=movl_r32_imm32  
  jmpq %rax             #  12    0x4005a5  2      OPC=jmpq_r64        
  nop                   #  13    0x4005a7  1      OPC=nop             
  nop                   #  14    0x4005a8  1      OPC=nop             
  nop                   #  15    0x4005a9  1      OPC=nop             
  nop                   #  16    0x4005aa  1      OPC=nop             
  nop                   #  17    0x4005ab  1      OPC=nop             
  nop                   #  18    0x4005ac  1      OPC=nop             
  nop                   #  19    0x4005ad  1      OPC=nop             
  nop                   #  20    0x4005ae  1      OPC=nop             
  nop                   #  21    0x4005af  1      OPC=nop             
.L_4005b0:              #        0x4005b0  0      OPC=<label>         
  popq %rbp             #  22    0x4005b0  1      OPC=popq_r64_1      
  retq                  #  23    0x4005b1  1      OPC=retq            
  nop                   #  24    0x4005b2  1      OPC=nop             
  nop                   #  25    0x4005b3  1      OPC=nop             
  nop                   #  26    0x4005b4  1      OPC=nop             
  nop                   #  27    0x4005b5  1      OPC=nop             
  nop                   #  28    0x4005b6  1      OPC=nop             
  nop                   #  29    0x4005b7  1      OPC=nop             
  nop                   #  30    0x4005b8  1      OPC=nop             
  nop                   #  31    0x4005b9  1      OPC=nop             
  nop                   #  32    0x4005ba  1      OPC=nop             
  nop                   #  33    0x4005bb  1      OPC=nop             
  nop                   #  34    0x4005bc  1      OPC=nop             
  nop                   #  35    0x4005bd  1      OPC=nop             
  nop                   #  36    0x4005be  1      OPC=nop             
  nop                   #  37    0x4005bf  1      OPC=nop             
                                                                      
.size deregister_tm_clones, .-deregister_tm_clones

