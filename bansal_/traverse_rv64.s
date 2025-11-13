    .text
    .globl _Z8traverseP4Node
    .type  _Z8traverseP4Node, @function
# -----------------------------------------------------------------------------
# void traverse(Node* head)
# 按 stoke.s 的风格：
#   1) 使用栈槽保存当前 head
#   2) 每轮循环：先取 next 并写回到栈槽（更新 head），再把旧 head->val 左移一位写回
# 注：x86 的 `sall $1,(%rax)` 是“内存原地左移”，RISC-V 需要 lw/slli/sw 三步达成同效。
# 结构体布局（RV64 / LP64D）：
#   Node { int32_t val; Node* next; }
#   val  @ +0, next @ +8
# -----------------------------------------------------------------------------
_Z8traverseP4Node:
    addi  sp, sp, -16        # 建栈帧
    sd    ra, 8(sp)          # 保存返回地址
    sd    a0, 0(sp)          # [sp+0] 保存 head

.Lloop:
    ld    t0, 0(sp)          # t0 = head
    beqz  t0, .Ldone         # if (!head) break

    # ------- 对应 stoke.s 的顺序：先更新 head = head->next -------
    ld    t1, 8(t0)          # t1 = head->next
    sd    t1, 0(sp)          # [sp+0] = t1   (head = next)

    # ------- 再对“旧 head”的 val 做原地左移（=乘2） -------
    lw    t2, 0(t0)          # t2 = *(int32*)(old_head + 0)   (val)
    slli  t2, t2, 1          # t2 <<= 1
    sw    t2, 0(t0)          # *(int32*)(old_head + 0) = t2

    j     .Lloop

.Ldone:
    ld    ra, 8(sp)
    addi  sp, sp, 16
    ret
    .size _Z8traverseP4Node, .-_Z8traverseP4Node

