//
//  152.MaximumProductSubarray.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/11/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given an integer array nums, find the contiguous subarray within an array (containing at least one number) which has the largest product.

 Example 1:

 Input: [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.
 Example 2:

 Input: [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
 */

class MaximumProductSubarray {
    func maxProduct(_ nums: [Int]) -> Int {
        if nums.isEmpty { return 0 }
        var gm = nums[0], lmax = nums[0], lmin = nums[0], i = 1
        while i < nums.count {
            let t = [lmax * nums[i], nums[i], lmin * nums[i]]
            lmin = t.min()!
            lmax = t.max()!
            gm = max(lmax, gm)
            i += 1
        }
        
        return gm
    }
}
