//
//  5.LongestPalindromicSubstring.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/19/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string s, return the longest palindromic substring in s.

  

 Example 1:

 Input: s = "babad"
 Output: "bab"
 Note: "aba" is also a valid answer.
 Example 2:

 Input: s = "cbbd"
 Output: "bb"
 Example 3:

 Input: s = "a"
 Output: "a"
 Example 4:

 Input: s = "ac"
 Output: "a"
  

 Constraints:

 1 <= s.length <= 1000
 s consist of only digits and English letters (lower-case and/or upper-case),
 */
class LongestPalindromicSubstring {
    func longestPalindrome(_ s: String) -> String {
        guard s.count > 1 else {
            return s
        }
        
        let sChars = Array(s)
        var maxLen = 0, start = 0
        
        for i in 0..<sChars.count {
            searchPalindrome(sChars, i, i, &start, &maxLen)
            searchPalindrome(sChars, i, i + 1, &start, &maxLen)
        }
        
        return String(sChars[start..<start + maxLen])
    }
    
    private func searchPalindrome(_ chars: [Character], _ l: Int, _ r: Int, _ start: inout Int, _ maxLen: inout Int) {
        var l = l, r = r
        
        while l >= 0 && r < chars.count && chars[l] == chars[r] {
            l -= 1
            r += 1
        }
        
        if maxLen < r - l - 1 {
            start = l + 1
            maxLen = r - l - 1
        }
    }
}
