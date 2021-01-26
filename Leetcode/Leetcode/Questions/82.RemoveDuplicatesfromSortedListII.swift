//
//  82.RemoveDuplicatesfromSortedListII.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/14/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//


class RemoveDuplicatesfromSortedListII {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil {
            return head
        }
        
        let dummy = ListNode(0)
        dummy.next = head
        var node = dummy
        
        while node.next != nil && node.next!.next != nil {
            if node.next!.val == node.next!.next!.val {
                let val = node.next!.val
                while node.next != nil && node.next!.val == val {
                    node.next = node.next!.next
                }
            } else {
                node = node.next!
            }
        }
        
        return dummy.next
    }
}

