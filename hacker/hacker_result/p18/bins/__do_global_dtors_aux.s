  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x640
#! rip-offset  0x400640
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.__do_global_dtors_aux:        #        0x400640  0      OPC=<label>       
  cmpb $0x0, 0x200a09(%rip)    #  1     0x400640  7      OPC=cmpb_m8_imm8  
  jne .L_40065a                #  2     0x400647  2      OPC=jne_label     
  pushq %rbp                   #  3     0x400649  1      OPC=pushq_r64_1   
  movq %rsp, %rbp              #  4     0x40064a  3      OPC=movq_r64_r64  
  callq .deregister_tm_clones  #  5     0x40064d  5      OPC=callq_label   
  popq %rbp                    #  6     0x400652  1      OPC=popq_r64_1    
  movb $0x1, 0x2009f6(%rip)    #  7     0x400653  7      OPC=movb_m8_imm8  
.L_40065a:                     #        0x40065a  0      OPC=<label>       
  nop                          #  8     0x40065a  1      OPC=nop           
  retq                         #  9     0x40065b  1      OPC=retq          
  nop                          #  10    0x40065c  1      OPC=nop           
  nop                          #  11    0x40065d  1      OPC=nop           
  nop                          #  12    0x40065e  1      OPC=nop           
  nop                          #  13    0x40065f  1      OPC=nop           
                                                                           
.size __do_global_dtors_aux, .-__do_global_dtors_aux

