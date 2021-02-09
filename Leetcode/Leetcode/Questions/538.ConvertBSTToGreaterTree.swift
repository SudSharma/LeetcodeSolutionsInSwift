//
//  538.ConvertBSTToGreaterTree.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/9/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given the root of a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.

 As a reminder, a binary search tree is a tree that satisfies these constraints:

 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.
 Note: This question is the same as 1038: https://leetcode.com/problems/binary-search-tree-to-greater-sum-tree/

  

 Example 1:


 Input: root = [4,1,6,0,2,5,7,null,null,null,3,null,null,null,8]
 Output: [30,36,21,36,35,26,15,null,null,null,33,null,null,null,8]
 Example 2:

 Input: root = [0,null,1]
 Output: [1,null,1]
 Example 3:

 Input: root = [1,0,2]
 Output: [3,3,2]
 Example 4:

 Input: root = [3,2,4,1]
 Output: [7,9,4,10]
  

 Constraints:

 The number of nodes in the tree is in the range [0, 104].
 -104 <= Node.val <= 104
 All the values in the tree are unique.
 root is guaranteed to be a valid binary search tree.
 */

class ConvertBSTToGreaterTree {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        
        var inorderValues = [Int]()
        inorderTraversal(root, &inorderValues)
        
        var greaterValues = [inorderValues[inorderValues.count - 1]: inorderValues[inorderValues.count - 1]]
        for index in stride(from: inorderValues.count - 2, to: -1, by: -1) {
            let initialValue = inorderValues[index]
            inorderValues[index] += inorderValues[index + 1]
            greaterValues[initialValue] = inorderValues[index]
        }
        
        inorderTraversal(root, greaterValues)
        return root
    }
    
    func inorderTraversal(_ root: TreeNode?, _ inorderValues: inout [Int]) {
        guard let rootNode = root else {
            return
        }
        
        inorderTraversal(rootNode.left, &inorderValues)
        inorderValues.append(rootNode.val)
        inorderTraversal(rootNode.right, &inorderValues)
    }
    
    func inorderTraversal(_ root: TreeNode?, _ greaterValues: [Int: Int]) {
        guard let rootNode = root else {
            return
        }
        
        inorderTraversal(rootNode.left, greaterValues)
        rootNode.val = greaterValues[rootNode.val] ?? 0
        inorderTraversal(rootNode.right, greaterValues)
    }
}
