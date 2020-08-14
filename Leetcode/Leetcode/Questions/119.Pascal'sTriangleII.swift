//
//  119.Pascal'sTriangleII.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/12/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Pascal's Triangle II
 Given a non-negative index k where k ≤ 33, return the kth index row of the Pascal's triangle.

 Note that the row index starts from 0.
                    1
                1       1
            1      2       1
        1       3       3       1
    1      4       6       4       1
 1      5       10      10      5       1
 In Pascal's triangle, each number is the sum of the two numbers directly above it.

 Example:

 Input: 3
 Output: [1,3,3,1]
 Follow up:

 Could you optimize your algorithm to use only O(k) extra space?
 */

class PascalsTriangleII {
    func c(m: Int, n: Int) -> Int {
        var result = 1, i = 1, j = m
        while i <= n {
            result = result * j / i
            i += 1
            j -= 1
        }
        return result
    }
    
    func getRow(_ rowIndex: Int) -> [Int] {
        var row = [Int]()
        for i in 0...rowIndex {
            if i <= rowIndex / 2 {
                row.append(c(m: rowIndex, n: i))
            } else {
                row.append(row[rowIndex - i])
            }
        }
        return row
    }
}
