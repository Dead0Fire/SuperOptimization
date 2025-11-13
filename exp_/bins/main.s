  .text
  .globl main
  .type main, @function

#! file-offset 0x440
#! rip-offset  0x400440
#! capacity    129 bytes

# Text                      #  Line  RIP       Bytes  Opcode                 
.main:                      #        0x400440  0      OPC=<label>            
  subq $0x18, %rsp          #  1     0x400440  4      OPC=subq_r64_imm8      
  movq 0x8(%rsi), %rdi      #  2     0x400444  4      OPC=movq_r64_m64       
  movl $0xa, %edx           #  3     0x400448  5      OPC=movl_r32_imm32     
  xorl %esi, %esi           #  4     0x40044d  2      OPC=xorl_r32_r32       
  callq .strtol_plt         #  5     0x40044f  5      OPC=callq_label        
  pxor %xmm0, %xmm0         #  6     0x400454  4      OPC=pxor_xmm_xmm       
  movsd 0x2b0(%rip), %xmm1  #  7     0x400458  8      OPC=movsd_xmm_m64      
  cvtsi2sdl %eax, %xmm0     #  8     0x400460  4      OPC=cvtsi2sdl_xmm_r32  
  divsd %xmm0, %xmm1        #  9     0x400464  4      OPC=divsd_xmm_xmm      
  movsd %xmm1, 0x8(%rsp)    #  10    0x400468  6      OPC=movsd_m64_xmm      
  movsd 0x292(%rip), %xmm1  #  11    0x40046e  8      OPC=movsd_xmm_m64      
  nop                       #  12    0x400476  1      OPC=nop                
  nop                       #  13    0x400477  1      OPC=nop                
  nop                       #  14    0x400478  1      OPC=nop                
  nop                       #  15    0x400479  1      OPC=nop                
  nop                       #  16    0x40047a  1      OPC=nop                
  nop                       #  17    0x40047b  1      OPC=nop                
  nop                       #  18    0x40047c  1      OPC=nop                
  nop                       #  19    0x40047d  1      OPC=nop                
  nop                       #  20    0x40047e  1      OPC=nop                
  nop                       #  21    0x40047f  1      OPC=nop                
.L_400480:                  #        0x400480  0      OPC=<label>            
  movapd %xmm1, %xmm0       #  22    0x400480  4      OPC=movapd_xmm_xmm     
  movl $0x601080, %edi      #  23    0x400484  5      OPC=movl_r32_imm32     
  movsd %xmm1, (%rsp)       #  24    0x400489  5      OPC=movsd_m64_xmm      
  callq ._Z3expdPm          #  25    0x40048e  5      OPC=callq_label        
  movsd (%rsp), %xmm1       #  26    0x400493  5      OPC=movsd_xmm_m64      
  movsd 0x278(%rip), %xmm3  #  27    0x400498  8      OPC=movsd_xmm_m64      
  addsd 0x8(%rsp), %xmm1    #  28    0x4004a0  6      OPC=addsd_xmm_m64      
  ucomisd %xmm1, %xmm3      #  29    0x4004a6  4      OPC=ucomisd_xmm_xmm    
  jae .L_400480             #  30    0x4004aa  2      OPC=jae_label          
  movapd %xmm3, %xmm0       #  31    0x4004ac  4      OPC=movapd_xmm_xmm     
  movl $0x601080, %edi      #  32    0x4004b0  5      OPC=movl_r32_imm32     
  callq ._Z3expdPm          #  33    0x4004b5  5      OPC=callq_label        
  xorl %eax, %eax           #  34    0x4004ba  2      OPC=xorl_r32_r32       
  addq $0x18, %rsp          #  35    0x4004bc  4      OPC=addq_r64_imm8      
  retq                      #  36    0x4004c0  1      OPC=retq               
                                                                             
.size main, .-main

