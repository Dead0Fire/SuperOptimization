  .text
  .globl _start
  .type _start, @function

#! file-offset 0x5a4
#! rip-offset  0x4005a4
#! capacity    44 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
._start:                        #        0x4005a4  0      OPC=<label>         
  xorl %ebp, %ebp               #  1     0x4005a4  2      OPC=xorl_r32_r32    
  movq %rdx, %r9                #  2     0x4005a6  3      OPC=movq_r64_r64    
  popq %rsi                     #  3     0x4005a9  1      OPC=popq_r64_1      
  movq %rsp, %rdx               #  4     0x4005aa  3      OPC=movq_r64_r64    
  andq $0xfffffff0, %rsp        #  5     0x4005ad  4      OPC=andq_r64_imm8   
  pushq %rax                    #  6     0x4005b1  1      OPC=pushq_r64_1     
  pushq %rsp                    #  7     0x4005b2  1      OPC=pushq_r64_1     
  movq $0x400770, %r8           #  8     0x4005b3  7      OPC=movq_r64_imm32  
  movq $0x400700, %rcx          #  9     0x4005ba  7      OPC=movq_r64_imm32  
  movq $0x4004d0, %rdi          #  10    0x4005c1  7      OPC=movq_r64_imm32  
  callq .__libc_start_main_plt  #  11    0x4005c8  5      OPC=callq_label     
  retq                          #  12    0x4005cd  1      OPC=retq            
  xchgw %ax, %ax                #  13    0x4005ce  2      OPC=xchgw_r16_ax    
                                                                              
.size _start, .-_start

