//
//  179.LargestNumber.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/25/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a list of non negative integers, arrange them such that they form the largest number.

 Example 1:

 Input: [10,2]
 Output: "210"
 Example 2:

 Input: [3,30,34,5,9]
 Output: "9534330"
 Note: The result may be very large, so you need to return a string instead of an integer.
 */

class LargestNumber {
    func largestNumber(_ nums: [Int]) -> String {
        let sortedNums = nums.sorted { (a, b) -> Bool in
            return Int("\(a)\(b)")! > Int("\(b)\(a)")!
        }
        print(sortedNums)
        var result = ""
        for num in sortedNums {
            result += "\(num)"
        }
        
        return result[result.startIndex] == "0" ? "0" : result
    }
}
