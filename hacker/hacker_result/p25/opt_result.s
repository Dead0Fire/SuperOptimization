  .text
  .globl _Z3p25ii
  .type _Z3p25ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    170 bytes

# Text              #  Line  RIP       Bytes  Opcode             
._Z3p25ii:          #        0x400656  0      OPC=<label>        
  movl %esi, %eax   #  1     0x400656  2      OPC=movl_r32_r32   
  imull %edi        #  2     0x400658  2      OPC=imull_r32      
  xchgl %edx, %eax  #  3     0x40065a  2      OPC=xchgl_r32_r32  
  retq              #  4     0x40065c  1      OPC=retq           
                                                                 
.size _Z3p25ii, .-_Z3p25ii
