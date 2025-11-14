  .text
  .globl _Z3expdPm
  .type _Z3expdPm, @function

#! file-offset 0x5b6
#! rip-offset  0x4005b6
#! capacity    202 bytes

# Text                             #  Line  RIP       Bytes  Opcode                     
._Z3expdPm:                        #        0x4005b6  0      OPC=<label>                
  vmulpd (%rdi), %xmm0, %xmm2      #  1     0x4005b6  4      OPC=vmulpd_xmm_xmm_m128    
  vroundpd $0x0, %xmm2, %xmm2      #  2     0x4005ba  6      OPC=vroundpd_xmm_xmm_imm8  
  vmulpd 0x10(%rdi), %xmm2, %xmm1  #  3     0x4005c0  5      OPC=vmulpd_xmm_xmm_m128    
  vcvtpd2dq %xmm2, %xmm3           #  4     0x4005c5  4      OPC=vcvtpd2dq_xmm_xmm      
  vmulpd 0x20(%rdi), %xmm2, %xmm2  #  5     0x4005c9  5      OPC=vmulpd_xmm_xmm_m128    
  vaddpd %xmm1, %xmm0, %xmm1       #  6     0x4005ce  4      OPC=vaddpd_xmm_xmm_xmm     
  vmovntdqa 0x30(%rdi), %xmm0      #  7     0x4005d2  6      OPC=vmovntdqa_xmm_m128     
  vpaddd 0x40(%rdi), %xmm3, %xmm3  #  8     0x4005d8  5      OPC=vpaddd_xmm_xmm_m128    
  vpshufd $0x72, %xmm3, %xmm3      #  9     0x4005dd  5      OPC=vpshufd_xmm_xmm_imm8   
  vaddpd %xmm2, %xmm1, %xmm1       #  10    0x4005e2  4      OPC=vaddpd_xmm_xmm_xmm     
  vmulpd 0x50(%rdi), %xmm1, %xmm2  #  11    0x4005e6  5      OPC=vmulpd_xmm_xmm_m128    
  vaddpd 0x60(%rdi), %xmm2, %xmm2  #  12    0x4005eb  5      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  13    0x4005f0  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0x70(%rdi), %xmm2, %xmm2  #  14    0x4005f4  5      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  15    0x4005f9  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0x80(%rdi), %xmm2, %xmm2  #  16    0x4005fd  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  17    0x400605  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0x90(%rdi), %xmm2, %xmm2  #  18    0x400609  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  19    0x400611  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xa0(%rdi), %xmm2, %xmm2  #  20    0x400615  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  21    0x40061d  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xb0(%rdi), %xmm2, %xmm2  #  22    0x400621  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  23    0x400629  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xc0(%rdi), %xmm2, %xmm2  #  24    0x40062d  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  25    0x400635  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xd0(%rdi), %xmm2, %xmm2  #  26    0x400639  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  27    0x400641  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xe0(%rdi), %xmm2, %xmm2  #  28    0x400645  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  29    0x40064d  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xf0(%rdi), %xmm2, %xmm2  #  30    0x400651  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  31    0x400659  4      OPC=vmulpd_xmm_xmm_xmm     
  vpslld $0x14, %xmm3, %xmm3       #  32    0x40065d  5      OPC=vpslld_xmm_xmm_imm8    
  vmulpd %xmm1, %xmm2, %xmm1       #  33    0x400662  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd %xmm0, %xmm1, %xmm0       #  34    0x400666  4      OPC=vaddpd_xmm_xmm_xmm     
  vmulpd %xmm3, %xmm0, %xmm0       #  35    0x40066a  4      OPC=vmulpd_xmm_xmm_xmm     
  retq                             #  36    0x40066e  1      OPC=retq                   
                                                                                        
.size _Z3expdPm, .-_Z3expdPm
