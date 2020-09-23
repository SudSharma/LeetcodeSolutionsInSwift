//
//  708.InsertIntoASortedCircularLinkedList.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/22/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a node from a Circular Linked List which is sorted in ascending order, write a function to insert a value insertVal into the list such that it remains a sorted circular list. The given node can be a reference to any single node in the list, and may not be necessarily the smallest value in the circular list.

 If there are multiple suitable places for insertion, you may choose any place to insert the new value. After the insertion, the circular list should remain sorted.

 If the list is empty (i.e., given node is null), you should create a new single circular list and return the reference to that single node. Otherwise, you should return the original given node.

  

 Example 1:


  
 Input: head = [3,4,1], insertVal = 2
 Output: [3,4,1,2]
 Explanation: In the figure above, there is a sorted circular list of three elements. You are given a reference to the node with value 3, and we need to insert 2 into the list. The new node should be inserted between node 1 and node 3. After the insertion, the list should look like this, and we should still return node 3.



 Example 2:

 Input: head = [], insertVal = 1
 Output: [1]
 Explanation: The list is empty (given head is null). We create a new single circular list and return the reference to that single node.
 Example 3:

 Input: head = [1], insertVal = 0
 Output: [1,0]
  
 Example 3:
 [1] 0
 
 Example 4:
 [3,3,3] 0
 
 Constraints:

 0 <= Number of Nodes <= 5 * 10^4
 -10^6 <= Node.val <= 10^6
 -10^6 <= insertVal <= 10^6
 */

public class Node {
    public var val: Int
    public var next: Node?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class InsertIntoASortedCircularLinkedList {
    func insert(_ head: Node?, _ insertVal: Int) -> Node? {
        if head == nil {
            let n = Node(insertVal)
            n.next = n
            return n
        }
        
        var p = head
        while p != nil {
            if (p!.val <= insertVal &&  p!.next!.val >= insertVal) ||
                (p!.val > p!.next!.val && (insertVal <= p!.next!.val || insertVal >= p!.val ) ||
                    p!.next === head
                ) {
                let n = Node(insertVal)
                n.next = p!.next
                p!.next = n
                break
            }
            p = p!.next
        }
        
        return head
    }
}
