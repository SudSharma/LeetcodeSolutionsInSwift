//
//  1.TwoSum.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.

 You may assume that each input would have exactly one solution, and you may not use the same element twice.

 Example:

 Given nums = [2, 7, 11, 15], target = 9,

 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 */

class TwoSum {
    
    // Runtime: 32 ms, faster than 93.04% of Swift online submissions for Two Sum.
    // Memory Usage: 21.3 MB, less than 40.70% of Swift online submissions for Two Sum.
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0..<nums.count {
            if dict[target - nums[i]] != nil {
                return [dict[target - nums[i]]!, i]
            }
            else {
                dict[nums[i]] = i
            }
        }
        
        return [0,0]
    }
    
    func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in i..<nums.count {
                if nums[j] == target - nums[i] {
                    return [i, j]
                }
            }
        }
        
        return [0,0]
    }
}
