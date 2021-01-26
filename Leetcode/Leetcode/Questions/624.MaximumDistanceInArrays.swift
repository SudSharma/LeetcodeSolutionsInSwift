//
//  624.MaximumDistanceInArrays.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 10/1/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given m arrays, and each array is sorted in ascending order. Now you can pick up two integers from two different arrays (each array picks one) and calculate the distance. We define the distance between two integers a and b to be their absolute difference |a-b|. Your task is to find the maximum distance.

 Example 1:

 Input:
 [[1,2,3],
  [4,5],
  [1,2,3]]
 Output: 4
 Explanation:
 One way to reach the maximum distance 4 is to pick 1 in the first or third array and pick 5 in the second array.
 Note:

 Each given array will have at least 1 number. There will be at least two non-empty arrays.
 The total number of the integers in all the m arrays will be in the range of [2, 10000].
 The integers in the m arrays will be in the range of [-10000, 10000].
 */

import Foundation

class MaximumDistanceInArrays {
    func maxDistance(_ arrays: [[Int]]) -> Int {
        if arrays.count < 2 {
            return 0
        }
        
        var minValue = arrays[0][0]
        var maxValue = arrays[0][arrays[0].count - 1]
        var result = Int.min
        
        for itemIndex in 1..<arrays.count {
            let currentMin = arrays[itemIndex][0]
            let currentMax = arrays[itemIndex][arrays[itemIndex].count - 1]
            result = max(result, abs(minValue - currentMax))
            result = max(result, abs(maxValue - currentMin))
            maxValue = max(maxValue, currentMax)
            minValue = min(minValue, currentMin)
        }
        
        return result
    }
}
