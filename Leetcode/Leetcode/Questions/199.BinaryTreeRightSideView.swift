//
//  199.BinaryTreeRightSideView.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/6/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a binary tree, imagine yourself standing on the right side of it, return the values of the nodes you can see ordered from top to bottom.

 Example:

 Input: [1,2,3,null,5,null,4]
 Output: [1, 3, 4]
 Explanation:

    1            <---
  /   \
 2     3         <---
  \     \
   5     4       <---
 */

class BinaryTreeRightSideView {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let rootNode = root else {
            return []
        }
        var results = [Int]()
        var maxLevel = 0
        rightSideView(rootNode, &results, 1, &maxLevel)
        return results
    }
    
    func rightSideView(_ root: TreeNode?, _ results: inout [Int], _ level: Int, _ maxLevel: inout Int) {
        guard let rootNode = root else {
            return
        }
        
        if maxLevel < level {
            results.append(rootNode.val)
            maxLevel = level
        }
        
        rightSideView(rootNode.right, &results, level + 1, &maxLevel)
        rightSideView(rootNode.left, &results, level + 1, &maxLevel)
    }
}
