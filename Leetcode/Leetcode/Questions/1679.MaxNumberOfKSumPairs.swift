//
//  1679.MaxNumberOfKSumPairs.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/18/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You are given an integer array nums and an integer k.

 In one operation, you can pick two numbers from the array whose sum equals k and remove them from the array.

 Return the maximum number of operations you can perform on the array.

  

 Example 1:

 Input: nums = [1,2,3,4], k = 5
 Output: 2
 Explanation: Starting with nums = [1,2,3,4]:
 - Remove numbers 1 and 4, then nums = [2,3]
 - Remove numbers 2 and 3, then nums = []
 There are no more pairs that sum up to 5, hence a total of 2 operations.
 Example 2:

 Input: nums = [3,1,3,4,3], k = 6
 Output: 1
 Explanation: Starting with nums = [3,1,3,4,3]:
 - Remove the first two 3's, then nums = [1,4,3]
 There are no more pairs that sum up to 6, hence a total of 1 operation.
  

 Constraints:

 1 <= nums.length <= 105
 1 <= nums[i] <= 109
 1 <= k <= 109
 */

class MaxNumberOfKSumPairs {
    func maxOperations(_ nums: [Int], _ k: Int) -> Int {
        var hashMap = [Int: Int]()
        var result = 0
        
        for num in nums {
            if let number = hashMap[num], number > 0 {
                result += 1
                hashMap[num] = (hashMap[num] ?? 0) - 1
                continue
            }
            
            hashMap[k - num] = (hashMap[k - num] ?? 0) + 1
            
        }
        
        return result
    }
}
