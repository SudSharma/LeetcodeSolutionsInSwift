//
//  409.LongestPalindrome.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/14/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Longest Palindrome
 Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

 This is case sensitive, for example "Aa" is not considered a palindrome here.

 Note:
 Assume the length of given string will not exceed 1,010.

 Example:

 Input:
 "abccccdd"

 Output:
 7

 Explanation:
 One longest palindrome that can be built is "dccaccd", whose length is 7.
 */

class LongestPalindrome {
    func longestPalindrome(_ s: String) -> Int {
        if s.isEmpty {
            return 0
        }
        
        var map = [Character: Int]()
        for char in s {
            if let alreadyExists = map[char] {
                map[char] = alreadyExists + 1
            }
            else {
                map[char] = 1
            }
        }
        
        var longestPalindromeValue = 0
        for (_, value) in map {
            if value%2 == 0 {
                longestPalindromeValue += value
            }
            else if (value - 1 > 0 && (value - 1) % 2 == 0) {
                longestPalindromeValue += (value - 1)
            }
        }
        if (longestPalindromeValue != 0 && longestPalindromeValue < s.count) || longestPalindromeValue + 1 == s.count {
            longestPalindromeValue += 1
        }
        else if longestPalindromeValue == 0 && s.count%2 == 0 {
            longestPalindromeValue = 1
        }
        
        return longestPalindromeValue
    }
}
