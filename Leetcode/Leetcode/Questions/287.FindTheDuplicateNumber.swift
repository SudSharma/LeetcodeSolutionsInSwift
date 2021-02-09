//
//  287.FindTheDuplicateNumber.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/8/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an array of integers nums containing n + 1 integers where each integer is in the range [1, n] inclusive.

 There is only one repeated number in nums, return this repeated number.

  

 Example 1:

 Input: nums = [1,3,4,2,2]
 Output: 2
 Example 2:

 Input: nums = [3,1,3,4,2]
 Output: 3
 Example 3:

 Input: nums = [1,1]
 Output: 1
 Example 4:

 Input: nums = [1,1,2]
 Output: 1
  

 Constraints:

 2 <= n <= 3 * 104
 nums.length == n + 1
 1 <= nums[i] <= n
 All the integers in nums appear only once except for precisely one integer which appears two or more times.
  

 Follow up:

 How can we prove that at least one duplicate number must exist in nums?
 Can you solve the problem without modifying the array nums?
 Can you solve the problem using only constant, O(1) extra space?
 Can you solve the problem with runtime complexity less than O(n2)?
 */

class FindTheDuplicateNumber {
    func findDuplicate(_ nums: [Int]) -> Int {
        var tempNums = Array(repeating: -1, count: nums.count + 1)
        for num in nums {
            if tempNums[num] != -1 {
                return num
            }
            else {
                tempNums[num] = 1
            }
        }
        
        return -1
    }
}
