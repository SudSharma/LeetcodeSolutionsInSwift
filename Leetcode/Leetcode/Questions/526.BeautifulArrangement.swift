//
//  526.BeautifulArrangement.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/3/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Suppose you have n integers from 1 to n. We define a beautiful arrangement as an array that is constructed by these n numbers successfully if one of the following is true for the ith position (1 <= i <= n) in this array:

 The number at the ith position is divisible by i.
 i is divisible by the number at the ith position.
 Given an integer n, return the number of the beautiful arrangements that you can construct.

  

 Example 1:

 Input: n = 2
 Output: 2
 Explanation:
 The first beautiful arrangement is [1, 2]:
 Number at the 1st position (i=1) is 1, and 1 is divisible by i (i=1).
 Number at the 2nd position (i=2) is 2, and 2 is divisible by i (i=2).
 The second beautiful arrangement is [2, 1]:
 Number at the 1st position (i=1) is 2, and 2 is divisible by i (i=1).
 Number at the 2nd position (i=2) is 1, and i (i=2) is divisible by 1.
 Example 2:

 Input: n = 1
 Output: 1
  

 Constraints:

 1 <= n <= 15
 */

class BeautifulArrangement {
    func countArrangement(_ n: Int) -> Int {
        var visited = Array(repeating: 0, count: n+1)
        var result = 0
        
        helper(n, visited: &visited, pos: 1, result: &result)
        
        return result
    }
    
    func helper(_ n: Int, visited: inout [Int], pos: Int, result: inout Int) {
        if pos > n {
            result += 1
            return
        }
        
        for i in 1...n {
            if visited[i] == 0 && (i % pos == 0 || pos % i == 0) {
                visited[i] = 1
                helper(n, visited: &visited, pos: pos + 1, result: &result)
                visited[i] = 0
            }
        }
    }
}
