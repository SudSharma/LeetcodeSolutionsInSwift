//
//  270.ClosestBinarySearchTreeValue.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/8/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Closest Binary Search Tree Value
 Given a non-empty binary search tree and a target value, find the value in the BST that is closest to the target.

 Note:

 Given target value is a floating point.
 You are guaranteed to have only one unique value in the BST that is closest to the target.
 Example:

 Input: root = [4,2,5,1,3], target = 3.714286

     4
    / \
   2   5
  / \
 1   3

 Output: 4
 */

class ClosestBinarySearchTreeValue {
    func closestValue(_ root: TreeNode?, _ target: Double) -> Int {
        var result = root?.val
        var rootNode = root
        
        while rootNode != nil {
            if abs(Double(result!) - target) >= abs(Double(rootNode!.val) - target) {
                result = rootNode?.val
            }
            
            rootNode = target < Double(rootNode!.val) ? rootNode?.left : rootNode?.right
        }
        
        return result!
    }
}
