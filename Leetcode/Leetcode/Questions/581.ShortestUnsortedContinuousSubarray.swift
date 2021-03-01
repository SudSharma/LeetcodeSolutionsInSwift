//
//  581.ShortestUnsortedContinuousSubarray.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/25/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an integer array nums, you need to find one continuous subarray that if you only sort this subarray in ascending order, then the whole array will be sorted in ascending order.

 Return the shortest such subarray and output its length.

  

 Example 1:

 Input: nums = [2,6,4,8,10,9,15]
 Output: 5
 Explanation: You need to sort [6, 4, 8, 10, 9] in ascending order to make the whole array sorted in ascending order.
 Example 2:

 Input: nums = [1,2,3,4]
 Output: 0
 Example 3:

 Input: nums = [1]
 Output: 0
  

 Constraints:

 1 <= nums.length <= 104
 -105 <= nums[i] <= 105
  

 Follow up: Can you solve it in O(n) time complexity?
 */

class ShortestUnsortedContinuousSubarray {
    func findUnsortedSubarray(_ nums: [Int]) -> Int {
        if nums.count < 2 {
            return 0
        }
        
        let sorted = nums.sorted()
        
        var left = -1
        var right = 0
        for index in 0..<nums.count {
            let unsortedCurrent = nums[index]
            let sortedCurrent = sorted[index]
            if unsortedCurrent != sortedCurrent {
                if left == -1 {
                    left = index
                    if index + 1 < nums.count {
                        right = index + 1
                    }
                }
                else {
                    right = index
                }
            }
        }
        
        if left == -1 {
            return 0
        }
        
        return right - left + 1
    }
}
