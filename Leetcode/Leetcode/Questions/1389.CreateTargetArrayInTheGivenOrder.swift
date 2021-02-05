//
//  1389.CreateTargetArrayInTheGivenOrder.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given two arrays of integers nums and index. Your task is to create target array under the following rules:

 Initially target array is empty.
 From left to right read nums[i] and index[i], insert at index index[i] the value nums[i] in target array.
 Repeat the previous step until there are no elements to read in nums and index.
 Return the target array.

 It is guaranteed that the insertion operations will be valid.

  

 Example 1:

 Input: nums = [0,1,2,3,4], index = [0,1,2,2,1]
 Output: [0,4,1,3,2]
 Explanation:
 nums       index     target
 0            0        [0]
 1            1        [0,1]
 2            2        [0,1,2]
 3            2        [0,1,3,2]
 4            1        [0,4,1,3,2]
 Example 2:

 Input: nums = [1,2,3,4,0], index = [0,1,2,3,0]
 Output: [0,1,2,3,4]
 Explanation:
 nums       index     target
 1            0        [1]
 2            1        [1,2]
 3            2        [1,2,3]
 4            3        [1,2,3,4]
 0            0        [0,1,2,3,4]
 Example 3:

 Input: nums = [1], index = [0]
 Output: [1]
  

 Constraints:

 1 <= nums.length, index.length <= 100
 nums.length == index.length
 0 <= nums[i] <= 100
 0 <= index[i] <= i

 */

class CreateTargetArrayInTheGivenOrder {
    func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        var target = Array(repeating: 0, count: nums.count)
        
        for indexValue in 0..<nums.count {
            target.insert(nums[indexValue], at: index[indexValue])
            if indexValue == nums.count - 1 {
                target = Array(target[..<nums.count])
            }
        }
        
        return target
    }
}
