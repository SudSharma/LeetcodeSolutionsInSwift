//
//  784.LetterCasePermutation.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/16/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string S, we can transform every letter individually to be lowercase or uppercase to create another string.

 Return a list of all possible strings we could create. You can return the output in any order.

  

 Example 1:

 Input: S = "a1b2"
 Output: ["a1b2","a1B2","A1b2","A1B2"]
 Example 2:

 Input: S = "3z4"
 Output: ["3z4","3Z4"]
 Example 3:

 Input: S = "12345"
 Output: ["12345"]
 Example 4:

 Input: S = "0"
 Output: ["0"]
  

 Constraints:

 S will be a string with length between 1 and 12.
 S will consist only of letters or digits.
 */

class LetterCasePermutation {
    func letterCasePermutation(_ S: String) -> [String] {
        var input = ""
        var permutations = Set<String>()
        permutation(&input, 0, S.lowercased(), &permutations)
        return Array(permutations)
    }
    
    func permutation(_ input: inout String, _ position: Int, _ original: String, _ permutations: inout Set<String>) {
        if position == original.count {
            permutations.insert(input)
            return
        }
        
        let currentChar = Character(extendedGraphemeClusterLiteral: original[original.index(original.startIndex, offsetBy: position)])
        
        if let asciiValue = currentChar.asciiValue, asciiValue >= 97 && asciiValue <= 122 {
            var inputCopy = input
            input.append(currentChar)
            permutation(&input, position + 1, original, &permutations)
            inputCopy.append(currentChar.uppercased())
            permutation(&inputCopy, position + 1, original, &permutations)
        }
        else {
            input.append(currentChar)
            permutation(&input, position + 1, original, &permutations)
        }
    }
}
