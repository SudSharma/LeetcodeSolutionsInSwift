//
//  3.LongestSubstringWithoutRepeatingCharacters.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/7/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string s, find the length of the longest substring without repeating characters.

  

 Example 1:

 Input: s = "abcabcbb"
 Output: 3
 Explanation: The answer is "abc", with the length of 3.
 Example 2:

 Input: s = "bbbbb"
 Output: 1
 Explanation: The answer is "b", with the length of 1.
 Example 3:

 Input: s = "pwwkew"
 Output: 3
 Explanation: The answer is "wke", with the length of 3.
 Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.
 Example 4:

 Input: s = ""
 Output: 0
 
 Constraints:

 0 <= s.length <= 5 * 104
 s consists of English letters, digits, symbols and spaces.
 */

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var str = ""
        var longest = 0

        for c in s {
            if !str.contains(c) {
                str.append(c)
            } else {
                longest = max(longest, str.count)
                let index = str.index(str.startIndex, offsetBy: 1)
                if str[..<index] == String(c) {
                    str = str.replacingOccurrences(of: String(c), with: "")
                } else {
                    if let index = str.firstIndex(of: c) {
                        let nextIndex = str.index(after: index)
                        str = String(str[nextIndex...])
                    }
                }
                str.append(c)
            }
        }
        longest = max(longest, str.count)
        return longest
    }
}
