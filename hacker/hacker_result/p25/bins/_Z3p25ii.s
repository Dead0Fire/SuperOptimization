  .text
  .globl _Z3p25ii
  .type _Z3p25ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    170 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._Z3p25ii:                 #        0x400656  0      OPC=<label>         
  pushq %rbp               #  1     0x400656  1      OPC=pushq_r64_1     
  movq %rsp, %rbp          #  2     0x400657  3      OPC=movq_r64_r64    
  movl %edi, -0x44(%rbp)   #  3     0x40065a  3      OPC=movl_m32_r32    
  movl %esi, -0x48(%rbp)   #  4     0x40065d  3      OPC=movl_m32_r32    
  movl -0x44(%rbp), %eax   #  5     0x400660  3      OPC=movl_r32_m32    
  andl $0xffff, %eax       #  6     0x400663  5      OPC=andl_eax_imm32  
  movl %eax, -0x3c(%rbp)   #  7     0x400668  3      OPC=movl_m32_r32    
  movl -0x44(%rbp), %eax   #  8     0x40066b  3      OPC=movl_r32_m32    
  sarl $0x10, %eax         #  9     0x40066e  3      OPC=sarl_r32_imm8   
  movl %eax, -0x38(%rbp)   #  10    0x400671  3      OPC=movl_m32_r32    
  movl -0x48(%rbp), %eax   #  11    0x400674  3      OPC=movl_r32_m32    
  andl $0xffff, %eax       #  12    0x400677  5      OPC=andl_eax_imm32  
  movl %eax, -0x34(%rbp)   #  13    0x40067c  3      OPC=movl_m32_r32    
  movl -0x48(%rbp), %eax   #  14    0x40067f  3      OPC=movl_r32_m32    
  sarl $0x10, %eax         #  15    0x400682  3      OPC=sarl_r32_imm8   
  movl %eax, -0x30(%rbp)   #  16    0x400685  3      OPC=movl_m32_r32    
  movl -0x3c(%rbp), %eax   #  17    0x400688  3      OPC=movl_r32_m32    
  imull -0x34(%rbp), %eax  #  18    0x40068b  4      OPC=imull_r32_m32   
  movl %eax, -0x2c(%rbp)   #  19    0x40068f  3      OPC=movl_m32_r32    
  movl -0x38(%rbp), %eax   #  20    0x400692  3      OPC=movl_r32_m32    
  imull -0x34(%rbp), %eax  #  21    0x400695  4      OPC=imull_r32_m32   
  movl %eax, -0x28(%rbp)   #  22    0x400699  3      OPC=movl_m32_r32    
  movl -0x30(%rbp), %eax   #  23    0x40069c  3      OPC=movl_r32_m32    
  imull -0x3c(%rbp), %eax  #  24    0x40069f  4      OPC=imull_r32_m32   
  movl %eax, -0x24(%rbp)   #  25    0x4006a3  3      OPC=movl_m32_r32    
  movl -0x38(%rbp), %eax   #  26    0x4006a6  3      OPC=movl_r32_m32    
  imull -0x30(%rbp), %eax  #  27    0x4006a9  4      OPC=imull_r32_m32   
  movl %eax, -0x20(%rbp)   #  28    0x4006ad  3      OPC=movl_m32_r32    
  movl -0x2c(%rbp), %eax   #  29    0x4006b0  3      OPC=movl_r32_m32    
  shrl $0x10, %eax         #  30    0x4006b3  3      OPC=shrl_r32_imm8   
  movl %eax, -0x1c(%rbp)   #  31    0x4006b6  3      OPC=movl_m32_r32    
  movl -0x28(%rbp), %edx   #  32    0x4006b9  3      OPC=movl_r32_m32    
  movl -0x1c(%rbp), %eax   #  33    0x4006bc  3      OPC=movl_r32_m32    
  addl %edx, %eax          #  34    0x4006bf  2      OPC=addl_r32_r32    
  movl %eax, -0x18(%rbp)   #  35    0x4006c1  3      OPC=movl_m32_r32    
  movl -0x18(%rbp), %eax   #  36    0x4006c4  3      OPC=movl_r32_m32    
  movzwl %ax, %eax         #  37    0x4006c7  3      OPC=movzwl_r32_r16  
  movl %eax, -0x14(%rbp)   #  38    0x4006ca  3      OPC=movl_m32_r32    
  movl -0x18(%rbp), %eax   #  39    0x4006cd  3      OPC=movl_r32_m32    
  sarl $0x10, %eax         #  40    0x4006d0  3      OPC=sarl_r32_imm8   
  movl %eax, -0x10(%rbp)   #  41    0x4006d3  3      OPC=movl_m32_r32    
  movl -0x24(%rbp), %edx   #  42    0x4006d6  3      OPC=movl_r32_m32    
  movl -0x14(%rbp), %eax   #  43    0x4006d9  3      OPC=movl_r32_m32    
  addl %edx, %eax          #  44    0x4006dc  2      OPC=addl_r32_r32    
  movl %eax, -0xc(%rbp)    #  45    0x4006de  3      OPC=movl_m32_r32    
  movl -0xc(%rbp), %eax    #  46    0x4006e1  3      OPC=movl_r32_m32    
  sarl $0x10, %eax         #  47    0x4006e4  3      OPC=sarl_r32_imm8   
  movl %eax, -0x8(%rbp)    #  48    0x4006e7  3      OPC=movl_m32_r32    
  movl -0x8(%rbp), %edx    #  49    0x4006ea  3      OPC=movl_r32_m32    
  movl -0x10(%rbp), %eax   #  50    0x4006ed  3      OPC=movl_r32_m32    
  addl %edx, %eax          #  51    0x4006f0  2      OPC=addl_r32_r32    
  movl %eax, -0x4(%rbp)    #  52    0x4006f2  3      OPC=movl_m32_r32    
  movl -0x4(%rbp), %edx    #  53    0x4006f5  3      OPC=movl_r32_m32    
  movl -0x20(%rbp), %eax   #  54    0x4006f8  3      OPC=movl_r32_m32    
  addl %edx, %eax          #  55    0x4006fb  2      OPC=addl_r32_r32    
  popq %rbp                #  56    0x4006fd  1      OPC=popq_r64_1      
  retq                     #  57    0x4006fe  1      OPC=retq            
  nop                      #  58    0x4006ff  1      OPC=nop             
                                                                         
.size _Z3p25ii, .-_Z3p25ii

