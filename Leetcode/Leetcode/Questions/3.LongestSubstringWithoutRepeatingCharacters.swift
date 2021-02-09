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
        var length = 0
        var temp = ""
        
        for char in s {
            if !temp.contains(char) {
                temp.append(char)
            }
            else {
                length = max(length, temp.count)
                if let index = temp.firstIndex(of: char) {
                    let nextIndex = temp.index(after: index)
                    temp = String(temp[nextIndex...])
                }
                temp.append(char)
            }
        }
        
        return max(length, temp.count)
    }
}
