  .text
  .globl _Z3p25ii
  .type _Z3p25ii, @function

#! file-offset 0x656
#! rip-offset  0x400656
#! capacity    170 bytes

# Text                           #  Line  RIP       Bytes  Opcode                  
._Z3p25ii:                       #        0x400656  0      OPC=<label>             
  xorq %rax, %rax                #  1     0x400656  3      OPC=xorq_r64_r64        
  andb $0x1, %al                 #  2     0x400659  2      OPC=andb_al_imm8        
  movzbw %dil, %r9w              #  3     0x40065b  5      OPC=movzbw_r16_r8       
  imull $0xffffffc0, %esi, %ecx  #  4     0x400660  3      OPC=imull_r32_r32_imm8  
  movzwq %r9w, %r9               #  5     0x400663  4      OPC=movzwq_r64_r16      
  xchgq %rdi, %rax               #  6     0x400667  2      OPC=xchgq_rax_r64       
  movzwq %di, %r8                #  7     0x400669  4      OPC=movzwq_r64_r16      
  imull %esi                     #  8     0x40066d  2      OPC=imull_r32           
  shlb $0x1, %ch                 #  9     0x40066f  2      OPC=shlb_rh_one         
  rcrl %cl, %r9d                 #  10    0x400671  3      OPC=rcrl_r32_cl         
  shrxl %edi, %esi, %edi         #  11    0x400674  5      OPC=shrxl_r32_r32_r32   
  adcw $0x20, %si                #  12    0x400679  4      OPC=adcw_r16_imm8       
  adcb %dil, %al                 #  13    0x40067d  3      OPC=adcb_r8_r8_1        
  rclw $0x1, %di                 #  14    0x400680  3      OPC=rclw_r16_one        
  cmovnsl %edx, %eax             #  15    0x400683  3      OPC=cmovnsl_r32_r32     
  adcw $0x20, %r9w               #  16    0x400686  5      OPC=adcw_r16_imm8       
  setnl %cl                      #  17    0x40068b  3      OPC=setnl_r8            
  addl %eax, %r9d                #  18    0x40068e  3      OPC=addl_r32_r32        
  xchgb %dil, %r8b               #  19    0x400691  3      OPC=xchgb_r8_r8         
  rcrb %cl, %ah                  #  20    0x400694  2      OPC=rcrb_rh_cl          
  bextrq %r8, %rax, %rsi         #  21    0x400696  5      OPC=bextrq_r64_r64_r64  
  andb %r8b, %sil                #  22    0x40069b  3      OPC=andb_r8_r8          
  cmovzl %edx, %eax              #  23    0x40069e  3      OPC=cmovzl_r32_r32      
  retq                           #  24    0x4006a1  1      OPC=retq                
                                                                                   
.size _Z3p25ii, .-_Z3p25ii
