  .text
  .globl _Z3p02i
  .type _Z3p02i, @function

#! file-offset 0x646
#! rip-offset  0x400646
#! capacity    26 bytes

# Text                      #  Line  RIP       Bytes  Opcode                  
._Z3p02i:                   #        0x400646  0      OPC=<label>             
  xorq %rax, %rax           #  1     0x400646  3      OPC=xorq_r64_r64        
  movswq %ax, %r11          #  2     0x400649  4      OPC=movswq_r64_r16      
  movl %edi, %r10d          #  3     0x40064d  3      OPC=movl_r32_r32_1      
  orq $0xffffffc0, %r11     #  4     0x400650  4      OPC=orq_r64_imm8        
  rorxl $0x80, %r10d, %edx  #  5     0x400654  6      OPC=rorxl_r32_r32_imm8  
  xchgl %edx, %r11d         #  6     0x40065a  3      OPC=xchgl_r32_r32       
  popcntl %edx, %ecx        #  7     0x40065d  4      OPC=popcntl_r32_r32     
  popcntl %r11d, %esi       #  8     0x400661  5      OPC=popcntl_r32_r32     
  movl %eax, %r9d           #  9     0x400666  3      OPC=movl_r32_r32        
  cmovnow %cx, %si          #  10    0x400669  4      OPC=cmovnow_r16_r16     
  adcw $0x1, %r11w          #  11    0x40066d  5      OPC=adcw_r16_imm8       
  addq %r9, %rsi            #  12    0x400672  3      OPC=addq_r64_r64_1      
  cmovcw %si, %r11w         #  13    0x400675  5      OPC=cmovcw_r16_r16      
  andq %r11, %r10           #  14    0x40067a  3      OPC=andq_r64_r64        
  cmpxchgq %r10, %rax       #  15    0x40067d  4      OPC=cmpxchgq_r64_r64    
  retq                      #  16    0x400681  1      OPC=retq                
                                                                              
.size _Z3p02i, .-_Z3p02i
