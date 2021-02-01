//
//  701.InsertIntoABinarySearchTree.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 10/6/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 You are given the root node of a binary search tree (BST) and a value to insert into the tree. Return the root node of the BST after the insertion. It is guaranteed that the new value does not exist in the original BST.

 Notice that there may exist multiple valid ways for the insertion, as long as the tree remains a BST after insertion. You can return any of them.

  

 Example 1:


 Input: root = [4,2,7,1,3], val = 5
 Output: [4,2,7,1,3,5]
 Explanation: Another accepted tree is:

 Example 2:

 Input: root = [40,20,60,10,30,50,70], val = 25
 Output: [40,20,60,10,30,50,70,null,null,25]
 Example 3:

 Input: root = [4,2,7,1,3,null,null,null,null,null,null], val = 5
 Output: [4,2,7,1,3,5]
  

 Constraints:

 The number of nodes in the tree will be in the range [0, 104].
 -108 <= Node.val <= 108
 All the values Node.val are unique.
 -108 <= val <= 108
 It's guaranteed that val does not exist in the original BST.
 */


class InsertIntoABinarySearchTree {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let rootNode = root else {
            return TreeNode(val)
        }
        
        if rootNode.val < val {
            if rootNode.right == nil {
                rootNode.right = TreeNode(val)
            }
            else {
                _ = insertIntoBST(rootNode.right, val)
            }
        }
        else {
            if rootNode.left == nil {
                rootNode.left = TreeNode(val)
            }
            else {
                _ = insertIntoBST(rootNode.left, val)
            }
        }
        
        return root
    }
}
