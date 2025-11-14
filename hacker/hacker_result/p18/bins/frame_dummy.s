  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x660
#! rip-offset  0x400660
#! capacity    38 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x400660  0      OPC=<label>         
  movl $0x600e20, %edi      #  1     0x400660  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x400665  4      OPC=cmpq_m64_imm8   
  jne .L_400670             #  3     0x400669  2      OPC=jne_label       
.L_40066b:                  #        0x40066b  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x40066b  2      OPC=jmpq_label      
  nop                       #  5     0x40066d  1      OPC=nop             
  nop                       #  6     0x40066e  1      OPC=nop             
  nop                       #  7     0x40066f  1      OPC=nop             
.L_400670:                  #        0x400670  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x400670  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x400675  3      OPC=testq_r64_r64   
  je .L_40066b              #  10    0x400678  2      OPC=je_label        
  pushq %rbp                #  11    0x40067a  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x40067b  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x40067e  2      OPC=callq_r64       
  popq %rbp                 #  14    0x400680  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x400681  5      OPC=jmpq_label_1    
                                                                          
.size frame_dummy, .-frame_dummy

