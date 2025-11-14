  .text
  .globl _start
  .type _start, @function

#! file-offset 0x54e
#! rip-offset  0x40054e
#! capacity    50 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x40054e  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x40054e  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x400550  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x400553  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x400554  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x400557  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x40055b  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x40055c  1      OPC=pushq_r64_1     
  movq $0x4006d0, %r8           #  8     0x40055d  7      OPC=movq_r64_imm32  
  movq $0x400660, %rcx          #  9     0x400564  7      OPC=movq_r64_imm32  
  movq $0x4004d0, %rdi          #  10    0x40056b  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x400572  5      OPC=callq_label     
  retq                          #  12    0x400577  1      OPC=retq            
  nop                           #  13    0x400578  1      OPC=nop             
  nop                           #  14    0x400579  1      OPC=nop             
  nop                           #  15    0x40057a  1      OPC=nop             
  nop                           #  16    0x40057b  1      OPC=nop             
  nop                           #  17    0x40057c  1      OPC=nop             
  nop                           #  18    0x40057d  1      OPC=nop             
  nop                           #  19    0x40057e  1      OPC=nop             
  nop                           #  20    0x40057f  1      OPC=nop             
                                                                              
.size _start, .-_start

