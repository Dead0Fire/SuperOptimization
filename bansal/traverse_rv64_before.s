    .text
    .globl _Z8traverseP4Node
    .type  _Z8traverseP4Node, @function

# 函数：void traverse(Node* head)
# 逻辑：head->val *= 2; head = head->next; 直到空

_Z8traverseP4Node:
    addi sp, sp, -16        # 栈空间（保存ra + head）
    sd   ra, 8(sp)
    sd   a0, 0(sp)          # 保存 head 参数

loop_check:
    ld   t0, 0(sp)          # 取 head
    beqz t0, done           # if (head == 0) break

    lw   t1, 0(t0)          # t1 = head->val
    slli t1, t1, 1          # t1 <<= 1  (val * 2)
    sw   t1, 0(t0)          # head->val = t1

    ld   t2, 8(t0)          # t2 = head->next
    sd   t2, 0(sp)          # head = next
    j    loop_check          # 继续循环

done:
    ld   ra, 8(sp)
    addi sp, sp, 16
    ret

