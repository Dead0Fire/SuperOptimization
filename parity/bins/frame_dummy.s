  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x560
#! rip-offset  0x400560
#! capacity    48 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x400560  0      OPC=<label>         
  movl $0x600e20, %edi      #  1     0x400560  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x400565  4      OPC=cmpq_m64_imm8   
  jne .L_400570             #  3     0x400569  2      OPC=jne_label       
.L_40056b:                  #        0x40056b  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x40056b  2      OPC=jmpq_label      
  nop                       #  5     0x40056d  1      OPC=nop             
  nop                       #  6     0x40056e  1      OPC=nop             
  nop                       #  7     0x40056f  1      OPC=nop             
.L_400570:                  #        0x400570  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x400570  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x400575  3      OPC=testq_r64_r64   
  je .L_40056b              #  10    0x400578  2      OPC=je_label        
  pushq %rbp                #  11    0x40057a  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x40057b  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x40057e  2      OPC=callq_r64       
  popq %rbp                 #  14    0x400580  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x400581  5      OPC=jmpq_label_1    
  nop                       #  16    0x400586  1      OPC=nop             
  nop                       #  17    0x400587  1      OPC=nop             
  nop                       #  18    0x400588  1      OPC=nop             
  nop                       #  19    0x400589  1      OPC=nop             
  nop                       #  20    0x40058a  1      OPC=nop             
  nop                       #  21    0x40058b  1      OPC=nop             
  nop                       #  22    0x40058c  1      OPC=nop             
  nop                       #  23    0x40058d  1      OPC=nop             
  nop                       #  24    0x40058e  1      OPC=nop             
  nop                       #  25    0x40058f  1      OPC=nop             
                                                                          
.size frame_dummy, .-frame_dummy

