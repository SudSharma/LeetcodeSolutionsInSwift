//
//  242.ValidAnagram.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/11/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given two strings s and t , write a function to determine if t is an anagram of s.

 Example 1:

 Input: s = "anagram", t = "nagaram"
 Output: true
 Example 2:

 Input: s = "rat", t = "car"
 Output: false
 Note:
 You may assume the string contains only lowercase alphabets.

 Follow up:
 What if the inputs contain unicode characters? How would you adapt your solution to such case?
 */

class ValidAnagram {
    func isAnagram1(_ s: String, _ t: String) -> Bool {
        return s.sorted() == t.sorted()
    }
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.isEmpty || t.isEmpty || s.count != t.count {
            return false
        }
        var mapping = [Character: Int]()
        for char in s {
            if let exists = mapping[char] {
                mapping[char] = exists + 1
            }
            else {
                mapping[char] = 1
            }
        }
        
        for char in t {
            if let exists = mapping[char] {
                mapping[char] = exists - 1
                if exists == 1 {
                    mapping.removeValue(forKey: char)
                }
            }
            else {
                break
            }
        }
        
        return mapping.keys.isEmpty
    }
}
