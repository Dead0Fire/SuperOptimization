  .text
  .globl _Z3p12ii
  .type _Z3p12ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text               #  Line  RIP       Bytes  Opcode              
._Z3p12ii:           #        0x400656  0      OPC=<label>         
  lzcntl %esi, %eax  #  1     0x400656  4      OPC=lzcntl_r32_r32  
  lzcntl %edi, %esi  #  2     0x40065a  4      OPC=lzcntl_r32_r32  
  subb %al, %sil     #  3     0x40065e  3      OPC=subb_r8_r8_1    
  setge %al          #  4     0x400661  3      OPC=setge_r8        
  retq               #  5     0x400664  1      OPC=retq            
                                                                   
.size _Z3p12ii, .-_Z3p12ii
