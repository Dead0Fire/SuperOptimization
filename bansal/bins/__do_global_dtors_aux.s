  .text
  .globl __do_global_dtors_aux
  .type __do_global_dtors_aux, @function

#! file-offset 0x760
#! rip-offset  0x400760
#! capacity    32 bytes

# Text                         #  Line  RIP       Bytes  Opcode            
.__do_global_dtors_aux:        #        0x400760  0      OPC=<label>       
  cmpb $0x0, 0x2008f9(%rip)    #  1     0x400760  7      OPC=cmpb_m8_imm8  
  jne .L_40077a                #  2     0x400767  2      OPC=jne_label     
  pushq %rbp                   #  3     0x400769  1      OPC=pushq_r64_1   
  movq %rsp, %rbp              #  4     0x40076a  3      OPC=movq_r64_r64  
  callq .deregister_tm_clones  #  5     0x40076d  5      OPC=callq_label   
  popq %rbp                    #  6     0x400772  1      OPC=popq_r64_1    
  movb $0x1, 0x2008e6(%rip)    #  7     0x400773  7      OPC=movb_m8_imm8  
.L_40077a:                     #        0x40077a  0      OPC=<label>       
  nop                          #  8     0x40077a  1      OPC=nop           
  retq                         #  9     0x40077b  1      OPC=retq          
  nop                          #  10    0x40077c  1      OPC=nop           
  nop                          #  11    0x40077d  1      OPC=nop           
  nop                          #  12    0x40077e  1      OPC=nop           
  nop                          #  13    0x40077f  1      OPC=nop           
                                                                           
.size __do_global_dtors_aux, .-__do_global_dtors_aux

