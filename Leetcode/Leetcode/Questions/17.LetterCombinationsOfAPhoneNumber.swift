//
//  17.LetterCombinationsOfAPhoneNumber.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/12/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string containing digits from 2-9 inclusive, return all possible letter combinations that the number could represent. Return the answer in any order.

 A mapping of digit to letters (just like on the telephone buttons) is given below. Note that 1 does not map to any letters.



  

 Example 1:

 Input: digits = "23"
 Output: ["ad","ae","af","bd","be","bf","cd","ce","cf"]
 Example 2:

 Input: digits = ""
 Output: []
 Example 3:

 Input: digits = "2"
 Output: ["a","b","c"]
  

 Constraints:

 0 <= digits.length <= 4
 digits[i] is a digit in the range ['2', '9'].
 */

class LetterCombinationsOfAPhoneNumber {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.isEmpty {
            return []
        }
        
        let mapping = ["2": ["a", "b", "c"],
                       "3": ["d", "e", "f"],
                       "4": ["g", "h", "i"],
                       "5": ["j", "k", "l"],
                       "6": ["m", "n", "o"],
                       "7": ["p", "q", "r", "s"],
                       "8": ["t", "u", "v"],
                       "9": ["w", "x", "y", "z"]]
        var letterCombinations = [String]()
        var combinations = [[String]]()
        for digit in digits {
            combinations.append(mapping[String(digit)]!)
        }
        
        return letterCombinations
    }
    
    func combine(_ values1: [String], _ values2: [String]) -> [String] {
        var combined = [String]()
        for value1 in values1 {
            for value2 in values2 {
                combined.append(value1 + value2)
            }
        }
        
        return combined
    }
}
