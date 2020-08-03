//
//  520.DetectCapital.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/1/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Detect Capital
 Given a word, you need to judge whether the usage of capitals in it is right or not.

 We define the usage of capitals in a word to be right when one of the following cases holds:

 All letters in this word are capitals, like "USA".
 All letters in this word are not capitals, like "leetcode".
 Only the first letter in this word is capital, like "Google".
 Otherwise, we define that this word doesn't use capitals in a right way.
  

 Example 1:

 Input: "USA"
 Output: True
  

 Example 2:

 Input: "FlaG"
 Output: False
  

 Note: The input will be a non-empty word consisting of uppercase and lowercase latin letters.
 */

class DetectCapital {
    func detectCapitalUse(_ word: String) -> Bool {
        var capitalNum = 0, isFirstUpperCased = false
        
        for char in word {
            if isUpperCaseChar(char) {
                capitalNum += 1
            }
        }
        
        if let firstChar = word.first {
            isFirstUpperCased = isUpperCaseChar(firstChar)
        }
        
        return capitalNum == 0 || (capitalNum == 1 && isFirstUpperCased) || capitalNum == word.count
    }
    
    func isUpperCaseChar(_ char: Character) -> Bool {
        return char.asciiValue! >= 65 && char.asciiValue! <= 90
    }
}
