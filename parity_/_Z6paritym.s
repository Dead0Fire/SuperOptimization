  .text
  .globl _Z6paritym
  .type _Z6paritym, @function

#! file-offset 0x590
#! rip-offset  0x400590
#! capacity    112 bytes

# Text             #  Line  RIP       Bytes  Opcode             
._Z6paritym:       #        0x400590  0      OPC=<label>        
  movq %rdi, %rax  #  1     0x400590  3      OPC=movq_r64_r64   
  shrq $0x1, %rax  #  2     0x400593  3      OPC=shrq_r64_one   
  andl $0x1, %eax  #  3     0x400596  3      OPC=andl_r32_imm8  
  movq %rax, %rdx  #  4     0x400599  3      OPC=movq_r64_r64   
  movq %rdi, %rax  #  5     0x40059c  3      OPC=movq_r64_r64   
  shrq $0x2, %rax  #  6     0x40059f  4      OPC=shrq_r64_imm8  
  andl $0x1, %eax  #  7     0x4005a3  3      OPC=andl_r32_imm8  
  addq %rdx, %rax  #  8     0x4005a6  3      OPC=addq_r64_r64   
  movq %rdi, %rdx  #  9     0x4005a9  3      OPC=movq_r64_r64   
  andl $0x1, %edx  #  10    0x4005ac  3      OPC=andl_r32_imm8  
  addq %rdx, %rax  #  11    0x4005af  3      OPC=addq_r64_r64   
  movq %rdi, %rdx  #  12    0x4005b2  3      OPC=movq_r64_r64   
  shrq $0x3, %rdx  #  13    0x4005b5  4      OPC=shrq_r64_imm8  
  andl $0x1, %edx  #  14    0x4005b9  3      OPC=andl_r32_imm8  
  addq %rdx, %rax  #  15    0x4005bc  3      OPC=addq_r64_r64   
  movq %rdi, %rdx  #  16    0x4005bf  3      OPC=movq_r64_r64   
  shrq $0x4, %rdx  #  17    0x4005c2  4      OPC=shrq_r64_imm8  
  andl $0x1, %edx  #  18    0x4005c6  3      OPC=andl_r32_imm8  
  addq %rax, %rdx  #  19    0x4005c9  3      OPC=addq_r64_r64   
  movq %rdi, %rax  #  20    0x4005cc  3      OPC=movq_r64_r64   
  shrq $0x5, %rax  #  21    0x4005cf  4      OPC=shrq_r64_imm8  
  andl $0x1, %eax  #  22    0x4005d3  3      OPC=andl_r32_imm8  
  addq %rax, %rdx  #  23    0x4005d6  3      OPC=addq_r64_r64   
  movq %rdi, %rax  #  24    0x4005d9  3      OPC=movq_r64_r64   
  shrq $0x7, %rdi  #  25    0x4005dc  4      OPC=shrq_r64_imm8  
  shrq $0x6, %rax  #  26    0x4005e0  4      OPC=shrq_r64_imm8  
  andl $0x1, %eax  #  27    0x4005e4  3      OPC=andl_r32_imm8  
  addq %rdx, %rax  #  28    0x4005e7  3      OPC=addq_r64_r64   
  addq %rdi, %rax  #  29    0x4005ea  3      OPC=addq_r64_r64   
  andl $0x1, %eax  #  30    0x4005ed  3      OPC=andl_r32_imm8  
  retq             #  31    0x4005f0  1      OPC=retq           
  nop              #  32    0x4005f1  1      OPC=nop            
  nop              #  33    0x4005f2  1      OPC=nop            
  nop              #  34    0x4005f3  1      OPC=nop            
  nop              #  35    0x4005f4  1      OPC=nop            
  nop              #  36    0x4005f5  1      OPC=nop            
  nop              #  37    0x4005f6  1      OPC=nop            
  nop              #  38    0x4005f7  1      OPC=nop            
  nop              #  39    0x4005f8  1      OPC=nop            
  nop              #  40    0x4005f9  1      OPC=nop            
  nop              #  41    0x4005fa  1      OPC=nop            
  nop              #  42    0x4005fb  1      OPC=nop            
  nop              #  43    0x4005fc  1      OPC=nop            
  nop              #  44    0x4005fd  1      OPC=nop            
  nop              #  45    0x4005fe  1      OPC=nop            
  nop              #  46    0x4005ff  1      OPC=nop            
                                                                
.size _Z6paritym, .-_Z6paritym

