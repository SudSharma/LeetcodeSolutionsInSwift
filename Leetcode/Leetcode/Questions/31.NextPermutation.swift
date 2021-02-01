//
//  31.NextPermutation.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/31/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.

 If such an arrangement is not possible, it must rearrange it as the lowest possible order (i.e., sorted in ascending order).

 The replacement must be in place and use only constant extra memory.

  

 Example 1:

 Input: nums = [1,2,3]
 Output: [1,3,2]
 Example 2:

 Input: nums = [3,2,1]
 Output: [1,2,3]
 Example 3:

 Input: nums = [1,1,5]
 Output: [1,5,1]
 Example 4:

 Input: nums = [1]
 Output: [1]
  

 Constraints:

 1 <= nums.length <= 100
 0 <= nums[i] <= 100
 */

class NextPermutation {
    func nextPermutation(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }
        
        let lastIndex = nums.count - 1
        var targetIndex = -1
        outer: for i in 0...lastIndex-1 {
            if nums[lastIndex - i - 1] < nums[lastIndex - i] {
                targetIndex = lastIndex - i - 1
                
                for j in 0..<lastIndex-targetIndex {
                    if nums[targetIndex] < nums[lastIndex - j] {
                        nums.swapAt(targetIndex, lastIndex - j)
                        break outer
                    }
                }
            }
        }
        
        nums[targetIndex+1...lastIndex].reverse()
    }
}
