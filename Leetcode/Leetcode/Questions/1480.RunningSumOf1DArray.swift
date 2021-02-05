//
//  1480.RunningSumOf1DArray.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.

  

 Example 1:

 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 Example 2:

 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 Example 3:

 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
  

 Constraints:

 1 <= nums.length <= 1000
 -10^6 <= nums[i] <= 10^6
 */

class RunningSumOf1DArray {
    func runningSum(_ nums: [Int]) -> [Int] {
        if nums.isEmpty {
            return []
        }
        
        var runningSum = [Int]()
        var previousSum = nums[0]
        runningSum.append(previousSum)
        for numIndex in 1..<nums.count {
            previousSum += nums[numIndex]
            runningSum.append(previousSum)
        }
        
        return runningSum
    }
}
