  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x600
#! rip-offset  0x400600
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.__do_global_dtors_aux:        #        0x400600  0      OPC=<label>       
  cmpb $0x0, 0x200a49(%rip)    #  1     0x400600  7      OPC=cmpb_m8_imm8  
  jne .L_40061a                #  2     0x400607  2      OPC=jne_label     
  pushq %rbp                   #  3     0x400609  1      OPC=pushq_r64_1   
  movq %rsp, %rbp              #  4     0x40060a  3      OPC=movq_r64_r64  
  callq .deregister_tm_clones  #  5     0x40060d  5      OPC=callq_label   
  popq %rbp                    #  6     0x400612  1      OPC=popq_r64_1    
  movb $0x1, 0x200a36(%rip)    #  7     0x400613  7      OPC=movb_m8_imm8  
.L_40061a:                     #        0x40061a  0      OPC=<label>       
  nop                          #  8     0x40061a  1      OPC=nop           
  retq                         #  9     0x40061b  1      OPC=retq          
  nop                          #  10    0x40061c  1      OPC=nop           
  nop                          #  11    0x40061d  1      OPC=nop           
  nop                          #  12    0x40061e  1      OPC=nop           
  nop                          #  13    0x40061f  1      OPC=nop           
                                                                           
.size __do_global_dtors_aux, .-__do_global_dtors_aux

