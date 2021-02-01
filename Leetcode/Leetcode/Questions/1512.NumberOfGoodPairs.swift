//
//  1512.NumberOfGoodPairs.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/31/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an array of integers nums.

 A pair (i,j) is called good if nums[i] == nums[j] and i < j.

 Return the number of good pairs.

  

 Example 1:

 Input: nums = [1,2,3,1,1,3]
 Output: 4
 Explanation: There are 4 good pairs (0,3), (0,4), (3,4), (2,5) 0-indexed.
 Example 2:

 Input: nums = [1,1,1,1]
 Output: 6
 Explanation: Each pair in the array are good.
 Example 3:

 Input: nums = [1,2,3]
 Output: 0
  

 Constraints:

 1 <= nums.length <= 100
 1 <= nums[i] <= 100
 */

class NumberOfGoodPairs {
    func numIdenticalPairs(_ nums: [Int]) -> Int {
        var identicalPairs = 0
        var dict: [Int: Int] = [:]
        
        for num in nums {
            if let element = dict[num] {
                identicalPairs += element
            }
            dict[num, default: 0] += 1
        }
        
        return identicalPairs
    }
    
    func numIdenticalPairs1(_ nums: [Int]) -> Int {
        var identicalPairs = 0
        
        for i in 0..<nums.count {
            for j in i+1..<nums.count {
                if nums[i] == nums[j] {
                    identicalPairs += 1
                }
            }
        }
        
        return identicalPairs
    }
}
