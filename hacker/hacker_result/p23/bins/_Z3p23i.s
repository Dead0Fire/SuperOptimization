  .text
  .globl _Z3p23i
  .type _Z3p23i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    170 bytes

# Text                    #  Line  RIP       Bytes  Opcode              
._Z3p23i:                 #        0x400646  0      OPC=<label>         
  pushq %rbp              #  1     0x400646  1      OPC=pushq_r64_1     
  movq %rsp, %rbp         #  2     0x400647  3      OPC=movq_r64_r64    
  movl %edi, -0x44(%rbp)  #  3     0x40064a  3      OPC=movl_m32_r32    
  movl -0x44(%rbp), %eax  #  4     0x40064d  3      OPC=movl_r32_m32    
  sarl $0x1, %eax         #  5     0x400650  2      OPC=sarl_r32_one    
  movl %eax, -0x38(%rbp)  #  6     0x400652  3      OPC=movl_m32_r32    
  movl -0x38(%rbp), %eax  #  7     0x400655  3      OPC=movl_r32_m32    
  andl $0x55555555, %eax  #  8     0x400658  5      OPC=andl_eax_imm32  
  movl %eax, -0x34(%rbp)  #  9     0x40065d  3      OPC=movl_m32_r32    
  movl -0x44(%rbp), %eax  #  10    0x400660  3      OPC=movl_r32_m32    
  subl -0x34(%rbp), %eax  #  11    0x400663  3      OPC=subl_r32_m32    
  movl %eax, -0x30(%rbp)  #  12    0x400666  3      OPC=movl_m32_r32    
  movl -0x30(%rbp), %eax  #  13    0x400669  3      OPC=movl_r32_m32    
  andl $0x33333333, %eax  #  14    0x40066c  5      OPC=andl_eax_imm32  
  movl %eax, -0x2c(%rbp)  #  15    0x400671  3      OPC=movl_m32_r32    
  movl -0x30(%rbp), %eax  #  16    0x400674  3      OPC=movl_r32_m32    
  sarl $0x2, %eax         #  17    0x400677  3      OPC=sarl_r32_imm8   
  movl %eax, -0x28(%rbp)  #  18    0x40067a  3      OPC=movl_m32_r32    
  movl -0x28(%rbp), %eax  #  19    0x40067d  3      OPC=movl_r32_m32    
  andl $0x33333333, %eax  #  20    0x400680  5      OPC=andl_eax_imm32  
  movl %eax, -0x24(%rbp)  #  21    0x400685  3      OPC=movl_m32_r32    
  movl -0x2c(%rbp), %edx  #  22    0x400688  3      OPC=movl_r32_m32    
  movl -0x24(%rbp), %eax  #  23    0x40068b  3      OPC=movl_r32_m32    
  addl %edx, %eax         #  24    0x40068e  2      OPC=addl_r32_r32    
  movl %eax, -0x20(%rbp)  #  25    0x400690  3      OPC=movl_m32_r32    
  movl -0x20(%rbp), %eax  #  26    0x400693  3      OPC=movl_r32_m32    
  sarl $0x4, %eax         #  27    0x400696  3      OPC=sarl_r32_imm8   
  movl %eax, -0x1c(%rbp)  #  28    0x400699  3      OPC=movl_m32_r32    
  movl -0x1c(%rbp), %edx  #  29    0x40069c  3      OPC=movl_r32_m32    
  movl -0x20(%rbp), %eax  #  30    0x40069f  3      OPC=movl_r32_m32    
  addl %edx, %eax         #  31    0x4006a2  2      OPC=addl_r32_r32    
  movl %eax, -0x18(%rbp)  #  32    0x4006a4  3      OPC=movl_m32_r32    
  movl -0x18(%rbp), %eax  #  33    0x4006a7  3      OPC=movl_r32_m32    
  andl $0xf0f0f0f, %eax   #  34    0x4006aa  5      OPC=andl_eax_imm32  
  movl %eax, -0x14(%rbp)  #  35    0x4006af  3      OPC=movl_m32_r32    
  movl -0x14(%rbp), %eax  #  36    0x4006b2  3      OPC=movl_r32_m32    
  sarl $0x8, %eax         #  37    0x4006b5  3      OPC=sarl_r32_imm8   
  movl %eax, -0x10(%rbp)  #  38    0x4006b8  3      OPC=movl_m32_r32    
  movl -0x14(%rbp), %edx  #  39    0x4006bb  3      OPC=movl_r32_m32    
  movl -0x10(%rbp), %eax  #  40    0x4006be  3      OPC=movl_r32_m32    
  addl %edx, %eax         #  41    0x4006c1  2      OPC=addl_r32_r32    
  movl %eax, -0xc(%rbp)   #  42    0x4006c3  3      OPC=movl_m32_r32    
  movl -0xc(%rbp), %eax   #  43    0x4006c6  3      OPC=movl_r32_m32    
  sarl $0x10, %eax        #  44    0x4006c9  3      OPC=sarl_r32_imm8   
  movl %eax, -0x8(%rbp)   #  45    0x4006cc  3      OPC=movl_m32_r32    
  movl -0xc(%rbp), %edx   #  46    0x4006cf  3      OPC=movl_r32_m32    
  movl -0x8(%rbp), %eax   #  47    0x4006d2  3      OPC=movl_r32_m32    
  addl %edx, %eax         #  48    0x4006d5  2      OPC=addl_r32_r32    
  movl %eax, -0x4(%rbp)   #  49    0x4006d7  3      OPC=movl_m32_r32    
  movl -0x4(%rbp), %eax   #  50    0x4006da  3      OPC=movl_r32_m32    
  andl $0x3f, %eax        #  51    0x4006dd  3      OPC=andl_r32_imm8   
  popq %rbp               #  52    0x4006e0  1      OPC=popq_r64_1      
  retq                    #  53    0x4006e1  1      OPC=retq            
  nop                     #  54    0x4006e2  1      OPC=nop             
  nop                     #  55    0x4006e3  1      OPC=nop             
  nop                     #  56    0x4006e4  1      OPC=nop             
  nop                     #  57    0x4006e5  1      OPC=nop             
  nop                     #  58    0x4006e6  1      OPC=nop             
  nop                     #  59    0x4006e7  1      OPC=nop             
  nop                     #  60    0x4006e8  1      OPC=nop             
  nop                     #  61    0x4006e9  1      OPC=nop             
  nop                     #  62    0x4006ea  1      OPC=nop             
  nop                     #  63    0x4006eb  1      OPC=nop             
  nop                     #  64    0x4006ec  1      OPC=nop             
  nop                     #  65    0x4006ed  1      OPC=nop             
  nop                     #  66    0x4006ee  1      OPC=nop             
  nop                     #  67    0x4006ef  1      OPC=nop             
                                                                        
.size _Z3p23i, .-_Z3p23i

