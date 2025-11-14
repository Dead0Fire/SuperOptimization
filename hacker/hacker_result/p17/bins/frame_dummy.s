  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x620
#! rip-offset  0x400620
#! capacity    38 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x400620  0      OPC=<label>         
  movl $0x600e20, %edi      #  1     0x400620  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x400625  4      OPC=cmpq_m64_imm8   
  jne .L_400630             #  3     0x400629  2      OPC=jne_label       
.L_40062b:                  #        0x40062b  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x40062b  2      OPC=jmpq_label      
  nop                       #  5     0x40062d  1      OPC=nop             
  nop                       #  6     0x40062e  1      OPC=nop             
  nop                       #  7     0x40062f  1      OPC=nop             
.L_400630:                  #        0x400630  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x400630  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x400635  3      OPC=testq_r64_r64   
  je .L_40062b              #  10    0x400638  2      OPC=je_label        
  pushq %rbp                #  11    0x40063a  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x40063b  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x40063e  2      OPC=callq_r64       
  popq %rbp                 #  14    0x400640  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x400641  5      OPC=jmpq_label_1    
                                                                          
.size frame_dummy, .-frame_dummy

