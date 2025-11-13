  .text
  .globl _start
  .type _start, @function

#! file-offset 0x4c1
#! rip-offset  0x4004c1
#! capacity    47 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x4004c1  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x4004c1  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x4004c3  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x4004c6  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x4004c7  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x4004ca  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x4004ce  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x4004cf  1      OPC=pushq_r64_1     
  movq $0x4006f0, %r8           #  8     0x4004d0  7      OPC=movq_r64_imm32  
  movq $0x400680, %rcx          #  9     0x4004d7  7      OPC=movq_r64_imm32  
  movq $0x400440, %rdi          #  10    0x4004de  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x4004e5  5      OPC=callq_label     
  retq                          #  12    0x4004ea  1      OPC=retq            
  nop                           #  13    0x4004eb  1      OPC=nop             
  nop                           #  14    0x4004ec  1      OPC=nop             
  nop                           #  15    0x4004ed  1      OPC=nop             
  nop                           #  16    0x4004ee  1      OPC=nop             
  nop                           #  17    0x4004ef  1      OPC=nop             
                                                                              
.size _start, .-_start

