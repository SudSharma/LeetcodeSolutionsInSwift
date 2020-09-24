//
//  229.MajorityElementII.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/22/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

 Note: The algorithm should run in linear time and in O(1) space.

 Example 1:

 Input: [3,2,3]
 Output: [3]
 Example 2:

 Input: [1,1,1,3,3,2,2,2]
 Output: [1,2]
    Hide Hint #1
 How many majority elements could it possibly have? 
 */

class MajorityElementII {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var elems = [Int: Int]()
        for n in nums {
            elems[n, default: 0] +=  1
        }
        
        return elems.compactMap { key, value in
            if value > nums.count / 3 { return key }
            return nil
        }
    }
}
