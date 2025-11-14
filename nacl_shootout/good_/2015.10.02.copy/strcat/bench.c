#define _GNU_SOURCE
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

// 原始 STOKE strcat 的签名（offset ABI）
extern uint32_t strcat(uint32_t dst_offset, uint32_t src_offset);

static char *sandbox;   // 相当于 NaCl 的地址空间

int main() {
    const size_t MEM_SIZE = 1 << 20;   // 1MB sandbox
    sandbox = aligned_alloc(64, MEM_SIZE);

    // 设置 r15（沙箱基址）
    register char *r15 asm("r15") = sandbox;

    uint32_t dst = 1000;
    uint32_t src = 5000;

    strcpy(sandbox + dst, "hello");
    strcpy(sandbox + src, "world");

    uint32_t ret = strcat(dst, src);

    printf("result offset = %u\n", ret);
    printf("buffer = %s\n", sandbox + dst);

    return 0;
}
