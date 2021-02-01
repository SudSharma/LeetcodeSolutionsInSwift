//
//  1675.MinimizeDeviationInArray.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/30/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You are given an array nums of n positive integers.

 You can perform two types of operations on any element of the array any number of times:

 If the element is even, divide it by 2.
 For example, if the array is [1,2,3,4], then you can do this operation on the last element, and the array will be [1,2,3,2].
 If the element is odd, multiply it by 2.
 For example, if the array is [1,2,3,4], then you can do this operation on the first element, and the array will be [2,2,3,4].
 The deviation of the array is the maximum difference between any two elements in the array.

 Return the minimum deviation the array can have after performing some number of operations.

  

 Example 1:

 Input: nums = [1,2,3,4]
 Output: 1
 Explanation: You can transform the array to [1,2,3,2], then to [2,2,3,2], then the deviation will be 3 - 2 = 1.
 Example 2:

 Input: nums = [4,1,5,20,3]
 Output: 3
 Explanation: You can transform the array after two operations to [4,2,5,5,3], then the deviation will be 5 - 2 = 3.
 Example 3:

 Input: nums = [2,10,8]
 Output: 3
  

 Constraints:

 n == nums.length
 2 <= n <= 105
 1 <= nums[i] <= 109
    Hide Hint #1
 Assume you start with the minimum possible value for each number so you can only multiply a number by 2 till it reaches its maximum possible value.
    Hide Hint #2
 If there is a better solution than the current one, then it must have either its maximum value less than the current maximum value, or the minimum value larger than the current minimum value.
    Hide Hint #3
 Since that we only increase numbers (multiply them by 2), we cannot decrease the current maximum value, so we must multiply the current minimum number by 2.
 */

/*
 
 Approach: The problem can be solved based on the following observations:

 Even numbers can be divided multiple times until it converts to an odd number.
 Odd numbers can be doubled only once as it converts to an even number.
 Therefore, even numbers can never be increased.
 
 Solution
 
 1. Traverse the array and double all the odd array elements. This nullifies the requirement for the 2nd operation.
 2. Now, decrease the largest array element while it’s even.
 3. To store the array elements in sorted manner, insert all array elements into a Set.
 4. Greedily reduce the maximum element present in the Set
 5. If the maximum element present in the Set is odd, break the loop.
 6. Return the minimum deviation obtained.
 */

class MinimizeDeviationInArray {
    func minimumDeviation(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else { return 0 }
        
        var arr = [Int]()
        
        for n in nums {
            insert(&arr, n % 2 == 0 ? n : n*2)
        }
        // print(arr)
        
        var res = arr.last! - arr.first!
        while arr.last! % 2 == 0 {
            insert(&arr, arr.last!/2)
            arr.removeLast()
            res = min(res, arr.last! - arr.first!)
        }
        return res
    }
    
    // binary search insert
    func insert(_ nums: inout [Int], _ target: Int) {
        if nums.isEmpty {
            nums.append(target)
            return
        }
        
        var left = 0
        var right = nums.count-1
        while left < right {
            let mid = left+(right-left)/2
            
            if nums[mid] < target {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        // this is for avoid insert duplicate element
        if nums[left] == target {
            return
        } else if nums[left] < target {
            nums.insert(target, at: left+1)
        } else {
            nums.insert(target, at: left)
        }
    }
}
