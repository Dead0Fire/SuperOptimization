  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x780
#! rip-offset  0x400780
#! capacity    48 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.frame_dummy:               #        0x400780  0      OPC=<label>         
  movl $0x600e10, %edi      #  1     0x400780  5      OPC=movl_r32_imm32  
  cmpq $0x0, (%rdi)         #  2     0x400785  4      OPC=cmpq_m64_imm8   
  jne .L_400790             #  3     0x400789  2      OPC=jne_label       
.L_40078b:                  #        0x40078b  0      OPC=<label>         
  jmpq .register_tm_clones  #  4     0x40078b  2      OPC=jmpq_label      
  nop                       #  5     0x40078d  1      OPC=nop             
  nop                       #  6     0x40078e  1      OPC=nop             
  nop                       #  7     0x40078f  1      OPC=nop             
.L_400790:                  #        0x400790  0      OPC=<label>         
  movl $0x0, %eax           #  8     0x400790  5      OPC=movl_r32_imm32  
  testq %rax, %rax          #  9     0x400795  3      OPC=testq_r64_r64   
  je .L_40078b              #  10    0x400798  2      OPC=je_label        
  pushq %rbp                #  11    0x40079a  1      OPC=pushq_r64_1     
  movq %rsp, %rbp           #  12    0x40079b  3      OPC=movq_r64_r64    
  callq %rax                #  13    0x40079e  2      OPC=callq_r64       
  popq %rbp                 #  14    0x4007a0  1      OPC=popq_r64_1      
  jmpq .register_tm_clones  #  15    0x4007a1  5      OPC=jmpq_label_1    
  nop                       #  16    0x4007a6  1      OPC=nop             
  nop                       #  17    0x4007a7  1      OPC=nop             
  nop                       #  18    0x4007a8  1      OPC=nop             
  nop                       #  19    0x4007a9  1      OPC=nop             
  nop                       #  20    0x4007aa  1      OPC=nop             
  nop                       #  21    0x4007ab  1      OPC=nop             
  nop                       #  22    0x4007ac  1      OPC=nop             
  nop                       #  23    0x4007ad  1      OPC=nop             
  nop                       #  24    0x4007ae  1      OPC=nop             
  nop                       #  25    0x4007af  1      OPC=nop             
                                                                          
.size frame_dummy, .-frame_dummy

