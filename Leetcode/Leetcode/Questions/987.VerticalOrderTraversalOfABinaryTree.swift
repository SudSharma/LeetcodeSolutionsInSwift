//
//  987.VerticalOrderTraversalOfABinaryTree.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/29/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given the root of a binary tree, calculate the vertical order traversal of the binary tree.

 For each node at position (x, y), its left and right children will be at positions (x - 1, y - 1) and (x + 1, y - 1) respectively.

 The vertical order traversal of a binary tree is a list of non-empty reports for each unique x-coordinate from left to right. Each report is a list of all nodes at a given x-coordinate. The report should be primarily sorted by y-coordinate from highest y-coordinate to lowest. If any two nodes have the same y-coordinate in the report, the node with the smaller value should appear earlier.

 Return the vertical order traversal of the binary tree.

  

 Example 1:


 Input: root = [3,9,20,null,null,15,7]
 Output: [[9],[3,15],[20],[7]]
 Explanation: Without loss of generality, we can assume the root node is at position (0, 0):
 The node with value 9 occurs at position (-1, -1).
 The nodes with values 3 and 15 occur at positions (0, 0) and (0, -2).
 The node with value 20 occurs at position (1, -1).
 The node with value 7 occurs at position (2, -2).
 Example 2:


 Input: root = [1,2,3,4,5,6,7]
 Output: [[4],[2],[1,5,6],[3],[7]]
 Explanation: The node with value 5 and the node with value 6 have the same position according to the given scheme.
 However, in the report [1,5,6], the node with value 5 comes first since 5 is smaller than 6.
  

 Constraints:

 The number of nodes in the tree is in the range [1, 1000].
 0 <= Node.val <= 1000
 */

class VerticalOrderTraversalOfABinaryTree {
    func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
        var traversedValues = [Int: [(Int, Int)]]()
        verticalTraversal(root, 0, 0, &traversedValues)
        var verticallyTraversedValues = [[Int]]()
        for key in traversedValues.keys.sorted() {
            if let values = traversedValues[key] {
                if values.count > 1 {
                    let sortedValues = values.sorted { (arg0, arg1) -> Bool in
                        if arg0.1 != arg1.1 {
                            return arg0.1 > arg1.1
                        }
                        else {
                            return arg0.0 < arg1.0
                        }
                    }
                    var sortedValue = [Int]()
                    for value in sortedValues {
                        sortedValue.append(value.0)
                    }
                    verticallyTraversedValues.append(sortedValue)
                }
                else {
                    verticallyTraversedValues.append([values[0].0])
                }
            }
        }
        
        return verticallyTraversedValues
    }
    
    func verticalTraversal(_ root: TreeNode?, _ x: Int, _ y: Int, _ dict: inout [Int: [(Int, Int)]]) {
        guard let rootNode = root else {
            return
        }
        
        if let _ = dict[x] {
            dict[x]?.append((rootNode.val, y))
        }
        else {
            dict[x] = [(rootNode.val, y)]
        }
        
        if let leftNode = rootNode.left {
            verticalTraversal(leftNode, x - 1, y - 1, &dict)
        }
        if let rightNode = rootNode.right {
            verticalTraversal(rightNode, x + 1, y - 1, &dict)
        }
    }
}
