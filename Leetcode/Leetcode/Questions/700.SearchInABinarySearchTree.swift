//
//  700.SearchInABinarySearchTree.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/15/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given the root node of a binary search tree (BST) and a value. You need to find the node in the BST that the node's value equals the given value. Return the subtree rooted with that node. If such node doesn't exist, you should return NULL.

 For example,

 Given the tree:
         4
        / \
       2   7
      / \
     1   3

 And the value to search: 2
 You should return this subtree:

       2
      / \
     1   3
 In the example above, if we want to search the value 5, since there is no node with value 5, we should return NULL.

 Note that an empty tree is represented by NULL, therefore you would see the expected output (serialized tree format) as [], not null.
 */

public class TreeNode: CustomStringConvertible, Equatable {
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
    }
    
    public var description: String {
        return "Value - \(val) Left - \(String(describing: left)), Right - \(String(describing: right)))"
    }
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int, left: TreeNode? = nil, right: TreeNode? = nil) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class BinarySearchTree {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let rootNode = root else {
            return nil
        }
        
        if rootNode.val == val {
            return rootNode
        }
        else if val < rootNode.val {
            return searchBST(rootNode.left, val)
        }
        else {
            return searchBST(rootNode.right, val)
        }
    }
    
    func areEqual(_ node1: TreeNode?, _ node2: TreeNode?) -> Bool {
        if node1 == nil && node2 != nil || node1 != nil && node2 == nil {
            return false
        }
        else if node1 == nil && node2 == nil {
            return true
        }
        
        return node1!.val == node2!.val && areEqual(node1?.left, node2?.left) && areEqual(node1?.right, node2?.right)
    }
}
