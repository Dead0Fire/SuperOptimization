  .text
  .globl _start
  .type _start, @function

#! file-offset 0x57f
#! rip-offset  0x40057f
#! capacity    49 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x40057f  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x40057f  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x400581  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x400584  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x400585  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x400588  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x40058c  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x40058d  1      OPC=pushq_r64_1     
  movq $0x400720, %r8           #  8     0x40058e  7      OPC=movq_r64_imm32  
  movq $0x4006b0, %rcx          #  9     0x400595  7      OPC=movq_r64_imm32  
  movq $0x4004d0, %rdi          #  10    0x40059c  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x4005a3  5      OPC=callq_label     
  retq                          #  12    0x4005a8  1      OPC=retq            
  nop                           #  13    0x4005a9  1      OPC=nop             
  nop                           #  14    0x4005aa  1      OPC=nop             
  nop                           #  15    0x4005ab  1      OPC=nop             
  nop                           #  16    0x4005ac  1      OPC=nop             
  nop                           #  17    0x4005ad  1      OPC=nop             
  nop                           #  18    0x4005ae  1      OPC=nop             
  nop                           #  19    0x4005af  1      OPC=nop             
                                                                              
.size _start, .-_start

