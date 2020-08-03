//
//  107.BinaryTreeLevelOrderTraversalII.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 7/2/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

class BinaryTreeLevelOrderTraversalII {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let _ = root else {
            return []
        }
        
        var output: [[Int]] = []
        var result: [Int] = []
        var queue: [TreeNode] = [root!]
        var queueNext: [TreeNode] = []
        while queue.count > 0 {
            for node in queue {
                result.append(node.val)
                if node.left != nil {
                    queueNext.append(node.left!)
                }
                if node.right != nil {
                    queueNext.append(node.right!)
                }
            }
            output.append(result)
            result.removeAll(keepingCapacity: true)
            queue = queueNext
            queueNext.removeAll(keepingCapacity: true)
        }
        return output
    }
}
