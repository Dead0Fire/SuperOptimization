  .text
  .globl _Z3p14ii
  .type _Z3p14ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                     #  Line  RIP       Bytes  Opcode                  
._Z3p14ii:                 #        0x400656  0      OPC=<label>             
  xaddl %esi, %edi         #  1     0x400656  3      OPC=xaddl_r32_r32       
  setnge %dh               #  2     0x400659  3      OPC=setnge_rh           
  rorxl $0xc0, %edi, %eax  #  3     0x40065c  6      OPC=rorxl_r32_r32_imm8  
  sarb $0x1, %dh           #  4     0x400662  2      OPC=sarb_rh_one         
  rcrl $0x1, %eax          #  5     0x400664  2      OPC=rcrl_r32_one        
  retq                     #  6     0x400666  1      OPC=retq                
                                                                             
.size _Z3p14ii, .-_Z3p14ii
