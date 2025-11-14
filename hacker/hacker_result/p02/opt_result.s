  .text
  .globl _Z3p02i
  .type _Z3p02i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._Z3p02i:                  #        0x400646  0      OPC=<label>         
  leal 0x1(,%edi,1), %ecx  #  1     0x400646  8      OPC=leal_r32_m64    
  andw %di, %cx            #  2     0x40064e  3      OPC=andw_r16_r16_1  
  movq %rcx, %rax          #  3     0x400651  3      OPC=movq_r64_r64    
  retq                     #  4     0x400654  1      OPC=retq            
                                                                         
.size _Z3p02i, .-_Z3p02i
