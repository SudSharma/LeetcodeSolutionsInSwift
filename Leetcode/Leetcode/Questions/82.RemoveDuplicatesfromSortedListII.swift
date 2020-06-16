//
//  82.RemoveDuplicatesfromSortedListII.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/14/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//


class RemoveDuplicatesfromSortedListII {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        var previousDuplicateNodeValue = Int.min
        
        while currentNode != nil {
            if let nextNode = currentNode?.next, nextNode.val == currentNode?.val {
                currentNode?.next = nextNode.next
                previousDuplicateNodeValue = currentNode!.val
            }
            else if previousDuplicateNodeValue == currentNode?.val {
                
            }
            else {
                currentNode = currentNode?.next
            }
        }
        
        return head
    }
}

