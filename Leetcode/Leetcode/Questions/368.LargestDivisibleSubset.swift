//
//  368.LargestDivisibleSubset.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a set of distinct positive integers, find the largest subset such that every pair (Si, Sj) of elements in this subset satisfies:

 Si % Sj = 0 or Sj % Si = 0.

 If there are multiple solutions, return any subset is fine.

 Example 1:

 Input: [1,2,3]
 Output: [1,2] (of course, [1,3] will also be ok)
 Example 2:

 Input: [1,2,4,8]
 Output: [1,2,4,8]
 */

class Solution {
    func largestDivisibleSubset(_ nums: [Int]) -> [Int] {
        if nums.isEmpty || nums.count == 1 {
            return nums
        }
        
        let sorted = nums.sorted()
        var largestDivisibleSubsetSize = 0
        let numsCount = sorted.count
        var divisorsCount = Array(repeating: 1, count: numsCount)
        var previous = Array(repeating: -1, count: numsCount)
        
        for i in 1..<numsCount {
            for j in 0..<i {
                if sorted[i] % sorted[j] == 0 && divisorsCount[i] < divisorsCount[j] + 1 {
                    divisorsCount[i] = divisorsCount[j] + 1
                    previous[i] = j
                }
            }
            
            if divisorsCount[largestDivisibleSubsetSize] < divisorsCount[i] {
                largestDivisibleSubsetSize = i
            }
        }
        
        var subset = [Int]()
        var k = largestDivisibleSubsetSize
        while k >= 0 {
            subset.append(sorted[k])
            k = previous[k]
        }
        
        return subset.reversed()
    }
}
