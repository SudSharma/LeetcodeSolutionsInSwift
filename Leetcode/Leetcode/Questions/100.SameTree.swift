//
//  100.SameTree.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/11/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given the roots of two binary trees p and q, write a function to check if they are the same or not.

 Two binary trees are considered the same if they are structurally identical, and the nodes have the same value.

  

 Example 1:


 Input: p = [1,2,3], q = [1,2,3]
 Output: true
 Example 2:


 Input: p = [1,2], q = [1,null,2]
 Output: false
 Example 3:


 Input: p = [1,2,1], q = [1,1,2]
 Output: false
  

 Constraints:

 The number of nodes in both trees is in the range [0, 100].
 -104 <= Node.val <= 104
 */

extension TreeNode: Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
    }
}

class SameTree {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        return p == q
    }
}

