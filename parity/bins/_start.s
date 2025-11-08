  .text
  .globl _start
  .type _start, @function

#! file-offset 0x48e
#! rip-offset  0x40048e
#! capacity    50 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x40048e  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x40048e  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x400490  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x400493  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x400494  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x400497  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x40049b  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x40049c  1      OPC=pushq_r64_1     
  movq $0x400670, %r8           #  8     0x40049d  7      OPC=movq_r64_imm32  
  movq $0x400600, %rcx          #  9     0x4004a4  7      OPC=movq_r64_imm32  
  movq $0x400450, %rdi          #  10    0x4004ab  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x4004b2  5      OPC=callq_label     
  retq                          #  12    0x4004b7  1      OPC=retq            
  nop                           #  13    0x4004b8  1      OPC=nop             
  nop                           #  14    0x4004b9  1      OPC=nop             
  nop                           #  15    0x4004ba  1      OPC=nop             
  nop                           #  16    0x4004bb  1      OPC=nop             
  nop                           #  17    0x4004bc  1      OPC=nop             
  nop                           #  18    0x4004bd  1      OPC=nop             
  nop                           #  19    0x4004be  1      OPC=nop             
  nop                           #  20    0x4004bf  1      OPC=nop             
                                                                              
.size _start, .-_start

