  .text
  .globl _Z3p18i
  .type _Z3p18i, @function

#! file-offset 0x686
#! rip-offset  0x400686
#! capacity    106 bytes

# Text                    #  Line  RIP       Bytes  Opcode              
._Z3p18i:                 #        0x400686  0      OPC=<label>         
  pushq %rbp              #  1     0x400686  1      OPC=pushq_r64_1     
  movq %rsp, %rbp         #  2     0x400687  3      OPC=movq_r64_r64    
  movl %edi, -0x24(%rbp)  #  3     0x40068a  3      OPC=movl_m32_r32    
  movl -0x24(%rbp), %eax  #  4     0x40068d  3      OPC=movl_r32_m32    
  subl $0x1, %eax         #  5     0x400690  3      OPC=subl_r32_imm8   
  movl %eax, -0x14(%rbp)  #  6     0x400693  3      OPC=movl_m32_r32    
  movl -0x14(%rbp), %eax  #  7     0x400696  3      OPC=movl_r32_m32    
  andl -0x24(%rbp), %eax  #  8     0x400699  3      OPC=andl_r32_m32    
  movl %eax, -0x10(%rbp)  #  9     0x40069c  3      OPC=movl_m32_r32    
  cmpl $0x0, -0x24(%rbp)  #  10    0x40069f  4      OPC=cmpl_m32_imm8   
  setne %al               #  11    0x4006a3  3      OPC=setne_r8        
  movzbl %al, %eax        #  12    0x4006a6  3      OPC=movzbl_r32_r8   
  movl %eax, -0xc(%rbp)   #  13    0x4006a9  3      OPC=movl_m32_r32    
  cmpl $0x0, -0x10(%rbp)  #  14    0x4006ac  4      OPC=cmpl_m32_imm8   
  setne %al               #  15    0x4006b0  3      OPC=setne_r8        
  movzbl %al, %eax        #  16    0x4006b3  3      OPC=movzbl_r32_r8   
  movl %eax, -0x8(%rbp)   #  17    0x4006b6  3      OPC=movl_m32_r32    
  cmpl $0x0, -0x8(%rbp)   #  18    0x4006b9  4      OPC=cmpl_m32_imm8   
  sete %al                #  19    0x4006bd  3      OPC=sete_r8         
  movzbl %al, %eax        #  20    0x4006c0  3      OPC=movzbl_r32_r8   
  movl %eax, -0x4(%rbp)   #  21    0x4006c3  3      OPC=movl_m32_r32    
  cmpl $0x0, -0x4(%rbp)   #  22    0x4006c6  4      OPC=cmpl_m32_imm8   
  je .L_4006d9            #  23    0x4006ca  2      OPC=je_label        
  cmpl $0x0, -0xc(%rbp)   #  24    0x4006cc  4      OPC=cmpl_m32_imm8   
  je .L_4006d9            #  25    0x4006d0  2      OPC=je_label        
  movl $0x1, %eax         #  26    0x4006d2  5      OPC=movl_r32_imm32  
  jmpq .L_4006de          #  27    0x4006d7  2      OPC=jmpq_label      
.L_4006d9:                #        0x4006d9  0      OPC=<label>         
  movl $0x0, %eax         #  28    0x4006d9  5      OPC=movl_r32_imm32  
.L_4006de:                #        0x4006de  0      OPC=<label>         
  movzbl %al, %eax        #  29    0x4006de  3      OPC=movzbl_r32_r8   
  popq %rbp               #  30    0x4006e1  1      OPC=popq_r64_1      
  retq                    #  31    0x4006e2  1      OPC=retq            
  nop                     #  32    0x4006e3  1      OPC=nop             
  nop                     #  33    0x4006e4  1      OPC=nop             
  nop                     #  34    0x4006e5  1      OPC=nop             
  nop                     #  35    0x4006e6  1      OPC=nop             
  nop                     #  36    0x4006e7  1      OPC=nop             
  nop                     #  37    0x4006e8  1      OPC=nop             
  nop                     #  38    0x4006e9  1      OPC=nop             
  nop                     #  39    0x4006ea  1      OPC=nop             
  nop                     #  40    0x4006eb  1      OPC=nop             
  nop                     #  41    0x4006ec  1      OPC=nop             
  nop                     #  42    0x4006ed  1      OPC=nop             
  nop                     #  43    0x4006ee  1      OPC=nop             
  nop                     #  44    0x4006ef  1      OPC=nop             
                                                                        
.size _Z3p18i, .-_Z3p18i

