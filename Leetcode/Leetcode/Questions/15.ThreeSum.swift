//
//  15.3Sum.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/10/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

 Notice that the solution set must not contain duplicate triplets.

  

 Example 1:

 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 Example 2:

 Input: nums = []
 Output: []
 Example 3:

 Input: nums = [0]
 Output: []
  

 Constraints:

 0 <= nums.length <= 3000
 -105 <= nums[i] <= 105
 */

class ThreeSum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.isEmpty {
            return []
        }
        
        var threeSum = [[Int]]()
        for index in 0..<nums.count {
            var tempArray = [Int]()
            if index == 0 {
                tempArray = Array(nums[1...])
            }
            else if index == nums.count - 1 {
                tempArray = Array(nums[0..<nums.count - 1])
            }
            else {
                tempArray = (Array(nums[0..<index]) + Array(nums[(index + 1)...]))
            }
            let twoSums = TwoSum().twoSum(tempArray, -nums[index])
            if twoSums[0] != twoSums[1] {
                threeSum.append([nums[index], tempArray[twoSums[0]], tempArray[twoSums[1]]])
            }
        }
        
        return threeSum
    }
}
