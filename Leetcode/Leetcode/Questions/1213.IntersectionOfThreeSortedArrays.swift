//
//  1213.IntersectionOfThreeSortedArrays.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/31/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given three integer arrays arr1, arr2 and arr3 sorted in strictly increasing order, return a sorted array of only the integers that appeared in all three arrays.

  

 Example 1:

 Input: arr1 = [1,2,3,4,5], arr2 = [1,2,5,7,9], arr3 = [1,3,4,5,8]
 Output: [1,5]
 Explanation: Only 1 and 5 appeared in the three arrays.
 Example 2:

 Input: arr1 = [197,418,523,876,1356], arr2 = [501,880,1593,1710,1870], arr3 = [521,682,1337,1395,1764]
 Output: []
  

 Constraints:

 1 <= arr1.length, arr2.length, arr3.length <= 1000
 1 <= arr1[i], arr2[i], arr3[i] <= 2000
 */

class IntersectionOfThreeSortedArrays {
    func arraysIntersection(_ arr1: [Int], _ arr2: [Int], _ arr3: [Int]) -> [Int] {
        let maxNum = max(arr1.max() ?? 0, max(arr2.max() ?? 0, arr3.max() ?? 0))
        var arraysIntersectionArray = Array(repeating: 0, count: maxNum + 1)
        for num in arr1 {
            arraysIntersectionArray[num] += 1
        }
        for num in arr2 {
            arraysIntersectionArray[num] += 1
        }
        for num in arr3 {
            arraysIntersectionArray[num] += 1
        }
        
        var filteredArray = [Int]()
        var index = 0
        for num in arraysIntersectionArray {
            if num == 3 {
                filteredArray.append(index)
            }
            index += 1
        }
        
        return filteredArray
    }
}
