  .text
  .globl _start
  .type _start, @function

#! file-offset 0x559
#! rip-offset  0x400559
#! capacity    55 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x400559  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x400559  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x40055b  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x40055e  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x40055f  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x400562  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x400566  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x400567  1      OPC=pushq_r64_1     
  movq $0x400700, %r8           #  8     0x400568  7      OPC=movq_r64_imm32  
  movq $0x400690, %rcx          #  9     0x40056f  7      OPC=movq_r64_imm32  
  movq $0x4004d0, %rdi          #  10    0x400576  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x40057d  5      OPC=callq_label     
  retq                          #  12    0x400582  1      OPC=retq            
  nop                           #  13    0x400583  1      OPC=nop             
  nop                           #  14    0x400584  1      OPC=nop             
  nop                           #  15    0x400585  1      OPC=nop             
  nop                           #  16    0x400586  1      OPC=nop             
  nop                           #  17    0x400587  1      OPC=nop             
  nop                           #  18    0x400588  1      OPC=nop             
  nop                           #  19    0x400589  1      OPC=nop             
  nop                           #  20    0x40058a  1      OPC=nop             
  nop                           #  21    0x40058b  1      OPC=nop             
  nop                           #  22    0x40058c  1      OPC=nop             
  nop                           #  23    0x40058d  1      OPC=nop             
  nop                           #  24    0x40058e  1      OPC=nop             
  nop                           #  25    0x40058f  1      OPC=nop             
                                                                              
.size _start, .-_start

