  .text
  .globl _Z3p11ii
  .type _Z3p11ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                     #  Line  RIP       Bytes  Opcode                 
._Z3p11ii:                 #        0x400656  0      OPC=<label>            
  andnl %edi, %esi, %r10d  #  1     0x400656  5      OPC=andnl_r32_r32_r32  
  subl %esi, %r10d         #  2     0x40065b  3      OPC=subl_r32_r32_1     
  setnb %r8b               #  3     0x40065e  4      OPC=setnb_r8           
  movsbl %r8b, %eax        #  4     0x400662  4      OPC=movsbl_r32_r8      
  retq                     #  5     0x400666  1      OPC=retq               
                                                                            
.size _Z3p11ii, .-_Z3p11ii
