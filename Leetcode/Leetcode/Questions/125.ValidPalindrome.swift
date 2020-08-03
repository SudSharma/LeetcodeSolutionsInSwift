//
//  125.ValidPalindrome.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/3/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Valid Palindrome
 Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

 Note: For the purpose of this problem, we define empty string as valid palindrome.

 Example 1:

 Input: "A man, a plan, a canal: Panama"
 Output: true
 
 Example 2:
 Input: "race a car"
 Output: false

 Constraints:

 s consists only of printable ASCII characters.
 */

import Foundation

class ValidPalindrome {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        
        let newS = s.lowercased().unicodeScalars.filter { (char) -> Bool in
            CharacterSet.alphanumerics.contains(char)
        }
        for index in 0..<newS.count/2 {
            if newS[newS.index(newS.startIndex, offsetBy: index)] != newS[newS.index(newS.endIndex, offsetBy: -index - 1)] {
                return false
            }
        }
        
        return true
    }
}
