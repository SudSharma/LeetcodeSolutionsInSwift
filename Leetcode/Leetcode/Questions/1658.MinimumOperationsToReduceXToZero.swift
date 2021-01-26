//
//  1658.MinimumOperationsToReduceXToZero.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/14/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You are given an integer array nums and an integer x. In one operation, you can either remove the leftmost or the rightmost element from the array nums and subtract its value from x. Note that this modifies the array for future operations.

 Return the minimum number of operations to reduce x to exactly 0 if it's possible, otherwise, return -1.

  

 Example 1:

 Input: nums = [1,1,4,2,3], x = 5
 Output: 2
 Explanation: The optimal solution is to remove the last two elements to reduce x to zero.
 Example 2:

 Input: nums = [5,6,7,8,9], x = 4
 Output: -1
 Example 3:

 Input: nums = [3,2,20,1,1,3], x = 10
 Output: 5
 Explanation: The optimal solution is to remove the last three elements and the first two elements (5 operations in total) to reduce x to zero.
  

 Constraints:

 1 <= nums.length <= 105
 1 <= nums[i] <= 104
 1 <= x <= 109
 */

class MinimumOperationsToReduceXToZero {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        let c = nums.count
        var leftSums = [0: 0], leftSum = 0
        for left in 0..<c {
            leftSum += nums[left]
            if let _ = leftSums[leftSum] {
                continue
            } else {
                leftSums[leftSum] = left + 1
            }
        }
        var result = leftSums[x, default: Int.max], rightSum = 0
        for right in stride(from: c - 1, through: 0, by: -1) {
            rightSum += nums[right]
            if let left = leftSums[x - rightSum], right >= left {
                result = min(result, left + (c - right))
            }
        }
        return result == Int.max ? -1 : result
    }
}
