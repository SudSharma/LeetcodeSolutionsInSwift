//
//  23.MergeKSortedLists.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/24/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You are given an array of k linked-lists lists, each linked-list is sorted in ascending order.

 Merge all the linked-lists into one sorted linked-list and return it.

  

 Example 1:

 Input: lists = [[1,4,5],[1,3,4],[2,6]]
 Output: [1,1,2,3,4,4,5,6]
 Explanation: The linked-lists are:
 [
   1->4->5,
   1->3->4,
   2->6
 ]
 merging them into one sorted list:
 1->1->2->3->4->4->5->6
 Example 2:

 Input: lists = []
 Output: []
 Example 3:

 Input: lists = [[]]
 Output: []
 */

class MergeKSortedLists {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        //base checks
        let input = lists
        if(input.count == 0) {
            return nil
        }
        if(input.count == 1) {
            return input[0]
        }
        
        return partition(lists,0,input.count - 1)
    }
    
    
    func partition(_ list:[ListNode?], _ start:Int, _ end:Int) -> ListNode?{
        if(start == end) {
            return list[start]
        }
        if(start < end) {
            let middle = (start + end)/2
            let l1 = partition(list, start,middle)
            let l2 = partition(list, middle + 1,end)
            return mergeTwoList(l1,l2)
        }
        return nil
    }
    
    func mergeTwoList(_ l1:ListNode?, _ l2:ListNode?) ->ListNode? {
        if(l1 == nil) {return l2}
        if(l2 == nil) {return l1}
        var result:ListNode?
        
        if(l1!.val <= l2!.val) {
            result = l1
            result!.next = mergeTwoList(l1!.next,l2)
        }
        else {
            result = l2
            result!.next = mergeTwoList(l1,l2!.next)
        }
        return result
    }
    
    func mergeKLists1(_ lists: [ListNode?]) -> ListNode? {
        if lists.isEmpty {
            return nil
        }
        
        if lists.count > 1 {
            var tempLists = lists
            while tempLists.count != 1 {
                mergeSorted(&tempLists)
            }
            
            return tempLists[0]
        }
        else {
            return lists[0]
        }
    }
    
    func mergeSorted(_ lists: inout [ListNode?]) {
        var list1 = lists.removeFirst()
        var list2 = lists.first!
        let headNode = ListNode(0)
        var current = headNode
        while list1 != nil && list2 != nil {
            guard let val1 = list1?.val, let val2 = list2?.val else {
                continue
            }
            if val1 < val2 {
                current.next = list1!
                list1 = list1?.next
            }
            else {
                current.next = list2!
                list2 = list2?.next
            }
            current = current.next!
        }
        
        current.next = list1 ?? list2
        lists[0] = headNode.next
    }
}
