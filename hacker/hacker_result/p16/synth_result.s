  .text
  .globl _Z3p16ii
  .type _Z3p16ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    58 bytes

# Text                            #  Line  RIP       Bytes  Opcode                  
._Z3p16ii:                        #        0x400656  0      OPC=<label>             
  movl $0x7, %edx                 #  1     0x400656  5      OPC=movl_r32_imm32      
  movq $0x4, %rax                 #  2     0x40065b  7      OPC=movq_r64_imm32      
  imull $0x40, %eax, %r9d         #  3     0x400662  4      OPC=imull_r32_r32_imm8  
  blsmskl %r9d, %edx              #  4     0x400666  5      OPC=blsmskl_r32_r32     
  movb %dil, %cl                  #  5     0x40066b  3      OPC=movb_r8_r8          
  rorl $0xff, %eax                #  6     0x40066e  3      OPC=rorl_r32_imm8       
  orl $0x20, %eax                 #  7     0x400671  5      OPC=orl_eax_imm32       
  addb %dh, %ah                   #  8     0x400676  2      OPC=addb_rh_rh          
  andb $0x80, %cl                 #  9     0x400678  3      OPC=andb_r8_imm8        
  cmovol %esi, %ecx               #  10    0x40067b  3      OPC=cmovol_r32_r32      
  rorb $0xf0, %ah                 #  11    0x40067e  3      OPC=rorb_rh_imm8        
  cmpq $0xfffffffb, %rax          #  12    0x400681  7      OPC=cmpq_r64_imm32      
  rcll %cl, %edi                  #  13    0x400688  2      OPC=rcll_r32_cl         
  movq $0xfffffffffffffffb, %r10  #  14    0x40068a  7      OPC=movq_r64_imm32      
  movq %rdi, %rax                 #  15    0x400691  3      OPC=movq_r64_r64_1      
  addl $0xfffffffb, %r10d         #  16    0x400694  7      OPC=addl_r32_imm32      
  rcrl %cl, %eax                  #  17    0x40069b  2      OPC=rcrl_r32_cl         
  shll %cl, %esi                  #  18    0x40069d  2      OPC=shll_r32_cl         
  cmpl %esi, %eax                 #  19    0x40069f  2      OPC=cmpl_r32_r32        
  cmovnael %esi, %eax             #  20    0x4006a1  3      OPC=cmovnael_r32_r32    
  retq                            #  21    0x4006a4  1      OPC=retq                
                                                                                    
.size _Z3p16ii, .-_Z3p16ii
