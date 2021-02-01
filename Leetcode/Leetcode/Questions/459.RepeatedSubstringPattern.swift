//
//  459.RepeatedSubstringPattern.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/3/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

import Foundation

/*
 Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only and its length will not exceed 10000.

  

 Example 1:

 Input: "abab"
 Output: True
 Explanation: It's the substring "ab" twice.
 Example 2:

 Input: "aba"
 Output: False
 Example 3:

 Input: "abcabcabcabc"
 Output: True
 Explanation: It's the substring "abc" four times. (And the substring "abcabc" twice.)
 */

class RepeatedSubstringPattern {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var arr:[Character] = [Character]()
        for char in s
        {
            arr.append(char)
        }
        var i = 1
        var j = 0
        let n = s.count
        var dp:[Int] = [Int](repeating:0,count:n + 1)
        while(i < n)
        {
            if arr[i] == arr[j]
            {
                i += 1
                j += 1
                dp[i] = j
            }
            else if j == 0
            {
                i += 1
            }
            else
            {
                j = dp[j]
            }
        }
        return dp[n] % (n - dp[n]) == 0 && dp[n] != 0
    }
}
