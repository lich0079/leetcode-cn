/*
 * @lc app=leetcode.cn id=2 lang=swift
 *
 * [2] 两数相加
 */

// @lc code=start
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var h1 = l1
        var h2 = l2
        var result: ListNode? = nil
        var current: ListNode? = nil

        var little = 0

        while h1 != nil || h2 != nil {
            let sum = ((h1?.val ?? 0) + (h2?.val ?? 0)) + little
            little = 0

            var val = sum
            if sum >= 10 {
                val = sum%10
                little = sum/10
            }
            let node = ListNode(val,  nil)
            if let currentT = current {
                currentT.next = node
                current = node
            } else {
                result = node
                current = node
            }
            h1 = h1?.next
            h2 = h2?.next
        }

        if little > 0 {
            let node = ListNode(little,  nil)
            current?.next = node
        }


        return result
    }
}
// @lc code=end

