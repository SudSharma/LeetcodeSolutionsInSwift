//
//  274.H-Index.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/19/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given an array of citations (each citation is a non-negative integer) of a researcher, write a function to compute the researcher's h-index.

 According to the definition of h-index on Wikipedia: "A scientist has index h if h of his/her N papers have at least h citations each, and the other N − h papers have no more than h citations each."

 Example:

 Input: citations = [3,0,6,1,5]
 Output: 3
 Explanation: [3,0,6,1,5] means the researcher has 5 papers in total and each of them had
              received 3, 0, 6, 1, 5 citations respectively.
              Since the researcher has 3 papers with at least 3 citations each and the remaining
              two with no more than 3 citations each, her h-index is 3.
 Note: If there are several possible values for h, the maximum one is taken as the h-index.
 */

class HIndex {
    func hIndex(_ citations: [Int]) -> Int {
        var tempCitations = citations
        quickSort(&tempCitations, start: 0, end: citations.count - 1)
        var low = 0
        var high = tempCitations.count - 1
        let count = tempCitations.count
        
        while low <= high {
            let mid = (low + high) / 2
            if tempCitations[mid] == count - mid {
                return count - mid
            }
            else if tempCitations[mid] > count - mid {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        
        return count - low
    }
    
    func quickSort(_ nums: inout [Int], start: Int, end: Int) {
        if start < end {
            let pivotIndex = pivot(&nums, start: start, end: end)
            quickSort(&nums, start: start, end: pivotIndex - 1)
            quickSort(&nums, start: pivotIndex + 1, end: end)
        }
    }
    
    func pivot(_ nums: inout [Int], start: Int, end: Int) -> Int {
        let pivotIndex = end
        var partitionIndex = start
        
        for index in start..<end {
            if nums[index] <= nums[pivotIndex] {
                nums.swapAt(index, partitionIndex)
                partitionIndex += 1
            }
        }
        
        nums.swapAt(pivotIndex, partitionIndex)
        
        return partitionIndex
    }
}
