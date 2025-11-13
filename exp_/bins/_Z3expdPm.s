  .text
  .globl _Z3expdPm
  .type _Z3expdPm, @function

#! file-offset 0x5b6
#! rip-offset  0x4005b6
#! capacity    202 bytes

# Text                             #  Line  RIP       Bytes  Opcode                     
._Z3expdPm:                        #        0x4005b6  0      OPC=<label>                
  vmovddup %xmm0, %xmm0            #  1     0x4005b6  4      OPC=vmovddup_xmm_xmm       
  vmulpd (%rdi), %xmm0, %xmm2      #  2     0x4005ba  4      OPC=vmulpd_xmm_xmm_m128    
  vroundpd $0x0, %xmm2, %xmm2      #  3     0x4005be  6      OPC=vroundpd_xmm_xmm_imm8  
  vmulpd 0x10(%rdi), %xmm2, %xmm1  #  4     0x4005c4  5      OPC=vmulpd_xmm_xmm_m128    
  vcvtpd2dq %xmm2, %xmm3           #  5     0x4005c9  4      OPC=vcvtpd2dq_xmm_xmm      
  vmulpd 0x20(%rdi), %xmm2, %xmm2  #  6     0x4005cd  5      OPC=vmulpd_xmm_xmm_m128    
  vaddpd %xmm1, %xmm0, %xmm1       #  7     0x4005d2  4      OPC=vaddpd_xmm_xmm_xmm     
  vmovapd 0x30(%rdi), %xmm0        #  8     0x4005d6  5      OPC=vmovapd_xmm_m128       
  vpaddd 0x40(%rdi), %xmm3, %xmm3  #  9     0x4005db  5      OPC=vpaddd_xmm_xmm_m128    
  vpslld $0x14, %xmm3, %xmm3       #  10    0x4005e0  5      OPC=vpslld_xmm_xmm_imm8    
  vpshufd $0x72, %xmm3, %xmm3      #  11    0x4005e5  5      OPC=vpshufd_xmm_xmm_imm8   
  vaddpd %xmm2, %xmm1, %xmm1       #  12    0x4005ea  4      OPC=vaddpd_xmm_xmm_xmm     
  vmulpd 0x50(%rdi), %xmm1, %xmm2  #  13    0x4005ee  5      OPC=vmulpd_xmm_xmm_m128    
  vaddpd 0x60(%rdi), %xmm2, %xmm2  #  14    0x4005f3  5      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  15    0x4005f8  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0x70(%rdi), %xmm2, %xmm2  #  16    0x4005fc  5      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  17    0x400601  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0x80(%rdi), %xmm2, %xmm2  #  18    0x400605  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  19    0x40060d  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0x90(%rdi), %xmm2, %xmm2  #  20    0x400611  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  21    0x400619  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xa0(%rdi), %xmm2, %xmm2  #  22    0x40061d  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  23    0x400625  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xb0(%rdi), %xmm2, %xmm2  #  24    0x400629  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  25    0x400631  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xc0(%rdi), %xmm2, %xmm2  #  26    0x400635  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  27    0x40063d  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xd0(%rdi), %xmm2, %xmm2  #  28    0x400641  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  29    0x400649  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xe0(%rdi), %xmm2, %xmm2  #  30    0x40064d  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  31    0x400655  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd 0xf0(%rdi), %xmm2, %xmm2  #  32    0x400659  8      OPC=vaddpd_xmm_xmm_m128    
  vmulpd %xmm1, %xmm2, %xmm2       #  33    0x400661  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd %xmm0, %xmm2, %xmm2       #  34    0x400665  4      OPC=vaddpd_xmm_xmm_xmm     
  vmulpd %xmm1, %xmm2, %xmm1       #  35    0x400669  4      OPC=vmulpd_xmm_xmm_xmm     
  vaddpd %xmm0, %xmm1, %xmm0       #  36    0x40066d  4      OPC=vaddpd_xmm_xmm_xmm     
  vmulpd %xmm3, %xmm0, %xmm0       #  37    0x400671  4      OPC=vmulpd_xmm_xmm_xmm     
  retq                             #  38    0x400675  1      OPC=retq                   
  nop                              #  39    0x400676  1      OPC=nop                    
  nop                              #  40    0x400677  1      OPC=nop                    
  nop                              #  41    0x400678  1      OPC=nop                    
  nop                              #  42    0x400679  1      OPC=nop                    
  nop                              #  43    0x40067a  1      OPC=nop                    
  nop                              #  44    0x40067b  1      OPC=nop                    
  nop                              #  45    0x40067c  1      OPC=nop                    
  nop                              #  46    0x40067d  1      OPC=nop                    
  nop                              #  47    0x40067e  1      OPC=nop                    
  nop                              #  48    0x40067f  1      OPC=nop                    
                                                                                        
.size _Z3expdPm, .-_Z3expdPm

