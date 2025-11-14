  .text
  .globl _start
  .type _start, @function

#! file-offset 0x6b4
#! rip-offset  0x4006b4
#! capacity    44 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x4006b4  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x4006b4  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x4006b6  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x4006b9  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x4006ba  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x4006bd  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x4006c1  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x4006c2  1      OPC=pushq_r64_1     
  movq $0x400900, %r8           #  8     0x4006c3  7      OPC=movq_r64_imm32  
  movq $0x400890, %rcx          #  9     0x4006ca  7      OPC=movq_r64_imm32  
  movq $0x400630, %rdi          #  10    0x4006d1  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x4006d8  5      OPC=callq_label     
  retq                          #  12    0x4006dd  1      OPC=retq            
  xchgw %ax, %ax                #  13    0x4006de  2      OPC=xchgw_r16_ax    
                                                                              
.size _start, .-_start

