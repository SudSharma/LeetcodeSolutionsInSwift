//
//  83.RemoveDuplicatesfromSortedList.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a sorted linked list, delete all duplicates such that each element appear only once.

 Example 1:

 Input: 1->1->2
 Output: 1->2
 Example 2:

 Input: 1->1->2->3->3
 Output: 1->2->3
 */


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        return "Value - \(val) Next - \(String(describing: next))"
    }
}

// Runtime: 24 ms, faster than 95.92% of Swift online submissions for Remove Duplicates from Sorted List.
// Memory Usage: 20.4 MB, less than 93.04% of Swift online submissions for Remove Duplicates from Sorted List.

class RemoveDuplicatesfromSortedList {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        while currentNode != nil {
            if let nextNode = currentNode?.next, nextNode.val == currentNode?.val {
                currentNode?.next = nextNode.next
            }
            else {
                currentNode = currentNode?.next
            }
        }
        
        return head
    }
}
