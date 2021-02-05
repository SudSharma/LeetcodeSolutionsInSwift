//
//  594.LongestHarmoniousSubsequence.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/4/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 We define a harmonious array as an array where the difference between its maximum value and its minimum value is exactly 1.

 Given an integer array nums, return the length of its longest harmonious subsequence among all its possible subsequences.

 A subsequence of array is a sequence that can be derived from the array by deleting some or no elements without changing the order of the remaining elements.

  

 Example 1:

 Input: nums = [1,3,2,2,5,2,3,7]
 Output: 5
 Explanation: The longest harmonious subsequence is [3,2,2,2,3].
 Example 2:

 Input: nums = [1,2,3,4]
 Output: 2
 Example 3:

 Input: nums = [1,1,1,1]
 Output: 0
  

 Constraints:

 1 <= nums.length <= 2 * 104
 -109 <= nums[i] <= 109
 */

class LongestHarmoniousSubsequence {
    func findLHS(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        var res = 0
        for num in nums {
            if let value = dict[num] {
                dict[num] = value + 1
            }
            else {
                dict[num] = 1
            }
        }
        
        for (key, value) in dict {
            if dict.keys.contains(key + 1) {
                res = max(res, value + dict[key + 1]!)
            }
        }
        
        return res
    }
}
