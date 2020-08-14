//
//  442.FindAllDuplicatesInAnArray.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/6/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

import Foundation

/*
 Find All Duplicates in an Array
 Given an array of integers, 1 ≤ a[i] ≤ n (n = size of array), some elements appear twice and others appear once.

 Find all the elements that appear twice in this array.

 Could you do it without extra space and in O(n) runtime?

 Example:

 Input:
 [4,3,2,7,8,2,3,1]

 Output:
 [2,3]
 */

class FindAllDuplicatesInAnArray {
    func findDuplicates(_ nums: [Int]) -> [Int] {
        var numsArray = nums
        var duplicates = [Int]()
        
        for index in 0..<numsArray.count {
            if numsArray[abs(numsArray[index]) - 1] >= 0 {
                numsArray[abs(numsArray[index]) - 1] = -numsArray[abs(numsArray[index]) - 1]
            }
            else {
                duplicates.append(abs(numsArray[index]))
            }
        }
        
        return duplicates
    }
}
