  .text
  .globl _start
  .type _start, @function

#! file-offset 0x574
#! rip-offset  0x400574
#! capacity    44 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x400574  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x400574  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x400576  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x400579  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x40057a  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x40057d  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x400581  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x400582  1      OPC=pushq_r64_1     
  movq $0x400700, %r8           #  8     0x400583  7      OPC=movq_r64_imm32  
  movq $0x400690, %rcx          #  9     0x40058a  7      OPC=movq_r64_imm32  
  movq $0x4004d0, %rdi          #  10    0x400591  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x400598  5      OPC=callq_label     
  retq                          #  12    0x40059d  1      OPC=retq            
  xchgw %ax, %ax                #  13    0x40059e  2      OPC=xchgw_r16_ax    
                                                                              
.size _start, .-_start

