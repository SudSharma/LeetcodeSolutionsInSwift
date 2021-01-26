//
//  28.ImplementstrStr().swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/13/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Implement strStr().

 Return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.

 Clarification:

 What should we return when needle is an empty string? This is a great question to ask during an interview.

 For the purpose of this problem, we will return 0 when needle is an empty string. This is consistent to C's strstr() and Java's indexOf().

  

 Example 1:

 Input: haystack = "hello", needle = "ll"
 Output: 2
 Example 2:

 Input: haystack = "aaaaa", needle = "bba"
 Output: -1
 Example 3:

 Input: haystack = "", needle = ""
 Output: 0
  

 Constraints:

 0 <= haystack.length, needle.length <= 5 * 104
 haystack and needle consist of only lower-case English characters.
 */

// Facebook & Amazon

class ImplementstrStr {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        if needle.isEmpty {
            return 0
        }
        else if haystack.count < needle.count {
            return -1
        }
        
        for index in 0..<haystack.count - needle.count + 1 {
            let charAtIndex = haystack[haystack.index(haystack.startIndex, offsetBy: index)]
            if charAtIndex == needle[needle.startIndex] && index + needle.count <= haystack.count && haystack[haystack.index(haystack.startIndex, offsetBy: index)..<haystack.index(haystack.startIndex, offsetBy: index + needle.count)] == needle {
                return index
            }
        }
        
        return -1
    }
}
