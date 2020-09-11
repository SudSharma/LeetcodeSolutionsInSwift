//
//  1119.RemoveVowelsFromAString.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string S, remove the vowels 'a', 'e', 'i', 'o', and 'u' from it, and return the new string.

  

 Example 1:

 Input: "leetcodeisacommunityforcoders"
 Output: "ltcdscmmntyfrcdrs"
 Example 2:

 Input: "aeiou"
 Output: ""
  

 Note:

 S consists of lowercase English letters only.
 1 <= S.length <= 1000
 */

class RemoveVowelsFromAString {
    func removeVowels(_ S: String) -> String {
        let vowels = "aeiou"
        var newString = ""
        for char in S {
            if !vowels.contains(char) {
                newString.append(char)
            }
        }
        
        return newString
    }
}
