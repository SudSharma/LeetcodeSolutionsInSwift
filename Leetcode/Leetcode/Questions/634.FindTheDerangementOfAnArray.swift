//
//  634.FindTheDerangementOfAnArray.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/9/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 In combinatorial mathematics, a derangement is a permutation of the elements of a set, such that no element appears in its original position.

 There's originally an array consisting of n integers from 1 to n in ascending order, you need to find the number of derangement it can generate.

 Also, since the answer may be very large, you should return the output mod 10^9 + 7.

 Example 1:

 Input: 3
 Output: 2
 Explanation: The original array is [1,2,3]. The two derangements are [2,3,1] and [3,1,2].
 Note:
 n is in the range of [1, 106].
 */

class FindTheDerangementOfAnArray {
    func findDerangement_TLE(_ n: Int) -> Int {
        if n == 1 {
            return 0
        }
        if n == 2 {
            return 1
        }
        
        return (n - 1) * (findDerangement(n - 1) + findDerangement(n - 2)) % 1000000007
    }
    
    func findDerangement(_ n: Int) -> Int {
        if n < 2 {
            return 0
        }
        if n == 2 {
            return 1
        }
        
        var dp = [Int64](repeatElement(0, count: n + 1))
        
        dp[1] = 0
        dp[2] = 1
        for i in 3...n {
            dp[i] = Int64(i - 1) * (dp[i - 1] + dp[i - 2]) % 1000000007
        }
        
        return Int(dp[n])
    }
}
