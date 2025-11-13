  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x590
#! rip-offset  0x400590
#! capacity    38 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x400590  0      OPC=<label>         
  movl $0x600e20, %edi      #  1     0x400590  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x400595  4      OPC=cmpq_m64_imm8   
  jne .L_4005a0             #  3     0x400599  2      OPC=jne_label       
.L_40059b:                  #        0x40059b  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x40059b  2      OPC=jmpq_label      
  nop                       #  5     0x40059d  1      OPC=nop             
  nop                       #  6     0x40059e  1      OPC=nop             
  nop                       #  7     0x40059f  1      OPC=nop             
.L_4005a0:                  #        0x4005a0  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x4005a0  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x4005a5  3      OPC=testq_r64_r64   
  je .L_40059b              #  10    0x4005a8  2      OPC=je_label        
  pushq %rbp                #  11    0x4005aa  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x4005ab  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x4005ae  2      OPC=callq_r64       
  popq %rbp                 #  14    0x4005b0  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x4005b1  5      OPC=jmpq_label_1    
                                                                          
.size frame_dummy, .-frame_dummy

