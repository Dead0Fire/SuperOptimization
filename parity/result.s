  .text
  .globl _Z6paritym
  .type _Z6paritym, @function

#! file-offset 0x590
#! rip-offset  0x400590
#! capacity    112 bytes

# Text              #  Line  RIP       Bytes  Opcode             
._Z6paritym:        #        0x400590  0      OPC=<label>        
  movq %rdi, %rax   #  1     0x400590  3      OPC=movq_r64_r64   
  shrq $0x1, %rax   #  2     0x400593  3      OPC=shrq_r64_one   
  movq %rax, %rdx   #  3     0x400596  3      OPC=movq_r64_r64   
  movq %rdi, %rax   #  4     0x400599  3      OPC=movq_r64_r64   
  shrq $0x2, %rax   #  5     0x40059c  4      OPC=shrq_r64_imm8  
  subb $0x4, %ah    #  6     0x4005a0  3      OPC=subb_rh_imm8   
  addq %rdx, %rax   #  7     0x4005a3  3      OPC=addq_r64_r64   
  movq %rdi, %rdx   #  8     0x4005a6  3      OPC=movq_r64_r64   
  andl $0x1, %edx   #  9     0x4005a9  3      OPC=andl_r32_imm8  
  addq %rdx, %rax   #  10    0x4005ac  3      OPC=addq_r64_r64   
  movq %rdi, %rdx   #  11    0x4005af  3      OPC=movq_r64_r64   
  shrq $0x3, %rdx   #  12    0x4005b2  4      OPC=shrq_r64_imm8  
  orb %al, %ah      #  13    0x4005b6  2      OPC=orb_rh_r8_1    
  xaddq %rdx, %rax  #  14    0x4005b8  4      OPC=xaddq_r64_r64  
  movq %rdi, %rdx   #  15    0x4005bc  3      OPC=movq_r64_r64   
  andl $0x1, %eax   #  16    0x4005bf  3      OPC=andl_r32_imm8  
  shrq $0x4, %rdx   #  17    0x4005c2  4      OPC=shrq_r64_imm8  
  andl $0x1, %edx   #  18    0x4005c6  3      OPC=andl_r32_imm8  
  addq %rax, %rdx   #  19    0x4005c9  3      OPC=addq_r64_r64   
  movq %rdi, %rax   #  20    0x4005cc  3      OPC=movq_r64_r64   
  shrq $0x5, %rax   #  21    0x4005cf  4      OPC=shrq_r64_imm8  
  addq %rax, %rdx   #  22    0x4005d3  3      OPC=addq_r64_r64   
  movq %rdi, %rax   #  23    0x4005d6  3      OPC=movq_r64_r64   
  shrq $0x7, %rdi   #  24    0x4005d9  4      OPC=shrq_r64_imm8  
  shrq $0x6, %rax   #  25    0x4005dd  4      OPC=shrq_r64_imm8  
  addq %rdx, %rax   #  26    0x4005e1  3      OPC=addq_r64_r64   
  addq %rdi, %rax   #  27    0x4005e4  3      OPC=addq_r64_r64   
  andl $0x1, %eax   #  28    0x4005e7  3      OPC=andl_r32_imm8  
  retq              #  29    0x4005ea  1      OPC=retq           
                                                                 
.size _Z6paritym, .-_Z6paritym
