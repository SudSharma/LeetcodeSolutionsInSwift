//
//  437.PathSumIII.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/8/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Path Sum III
 You are given a binary tree in which each node contains an integer value.

 Find the number of paths that sum to a given value.

 The path does not need to start or end at the root or a leaf, but it must go downwards (traveling only from parent nodes to child nodes).

 The tree has no more than 1,000 nodes and the values are in the range -1,000,000 to 1,000,000.

 Example:

 root = [10,5,-3,3,2,null,11,3,-2,null,1], sum = 8

       10
      /  \
     5   -3
    / \    \
   3   2   11
  / \   \
 3  -2   1

 Return 3. The paths that sum to 8 are:

 1.  5 -> 3
 2.  5 -> 2 -> 1
 3. -3 -> 11
 */

class PathSumIII {
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if(root == nil){
            return 0;
        }
        return sums(root,sum)+pathSum(root!.left,sum)+pathSum(root!.right,sum);
    }
    
    func  sums(_ root: TreeNode?, _ sum: Int) -> Int{
        if (root == nil) {
            return 0;
        }
        let left = sums(root?.left,sum - root!.val)
        let right = sums(root?.right,sum - root!.val)
        
        if (root!.val == sum) {
            return right+left+1;
        } else {
            return right+left;
        }
    }
}
