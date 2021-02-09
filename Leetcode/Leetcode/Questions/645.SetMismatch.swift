//
//  645.SetMismatch.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/9/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You have a set of integers s, which originally contains all the numbers from 1 to n. Unfortunately, due to some error, one of the numbers in s got duplicated to another number in the set, which results in repetition of one number and loss of another number.

 You are given an integer array nums representing the data status of this set after the error.

 Find the number that occurs twice and the number that is missing and return them in the form of an array.

  

 Example 1:

 Input: nums = [1,2,2,4]
 Output: [2,3]
 Example 2:

 Input: nums = [1,1]
 Output: [1,2]
  

 Constraints:

 2 <= nums.length <= 104
 1 <= nums[i] <= 104
 */

class SetMismatch {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var mapping = Array(repeating: -1, count: nums.count + 1)
        var duplicateNum = -1
        for num in nums {
            if mapping[num] == -1 {
                mapping[num] = 1
            }
            else {
                duplicateNum = num
            }
        }
        
        var missingNum = -1
        for index in 1..<mapping.count {
            if mapping[index] == -1 {
                missingNum = index
                break
            }
        }
        
        return [duplicateNum, missingNum]
    }
}
