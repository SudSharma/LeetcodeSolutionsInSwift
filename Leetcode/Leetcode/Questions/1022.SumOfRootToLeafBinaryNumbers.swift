//
//  1022.SumOfRootToLeafBinaryNumbers.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/8/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a binary tree, each node has value 0 or 1.  Each root-to-leaf path represents a binary number starting with the most significant bit.  For example, if the path is 0 -> 1 -> 1 -> 0 -> 1, then this could represent 01101 in binary, which is 13.

 For all leaves in the tree, consider the numbers represented by the path from the root to that leaf.

 Return the sum of these numbers.

  

 Example 1:



 Input: [1,0,1,0,1,0,1]
 Output: 22
 Explanation: (100) + (101) + (110) + (111) = 4 + 5 + 6 + 7 = 22
  

 Note:

 The number of nodes in the tree is between 1 and 1000.
 node.val is 0 or 1.
 The answer will not exceed 2^31 - 1.
    Hide Hint #1
 Find each path, then transform that path to an integer in base 10.
 */

class SumOfRootToLeafBinaryNumbers {
    var mod:Int = 1000000007
    var ans:Int = 0
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        ans = 0
        dfs(root, 0)
        return ans % mod
    }

    func dfs(_ cur: TreeNode?,_ v:Int) {
        if cur == nil {return}
        
        if cur?.left == nil && cur?.right == nil {
            ans += v*2 + cur!.val
            return
        }
        dfs(cur?.left, (v*2 + cur!.val) % mod)
        dfs(cur?.right, (v*2 + cur!.val) % mod)

    }
}
