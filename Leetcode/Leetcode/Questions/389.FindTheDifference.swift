//
//  389.FindTheDifference.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/24/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given two strings s and t which consist of only lowercase letters.

 String t is generated by random shuffling string s and then add one more letter at a random position.

 Find the letter that was added in t.

 Example:

 Input:
 s = "abcd"
 t = "abcde"

 Output:
 e

 Explanation:
 'e' is the letter that was added.
 */

class FindTheDifference {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var new = Array(repeating: 0, count: 26)
        let aASCIIValue = "a".unicodeScalars.first?.value
        for index in 0..<s.count {
            let index1 = Int(s[s.index(s.startIndex, offsetBy: index)].unicodeScalars.first!.value - aASCIIValue!)
            new[index1] -= 1
            let index2 = Int(t[t.index(t.startIndex, offsetBy: index)].unicodeScalars.first!.value - aASCIIValue!)
            new[index2] += 1
        }
        let lastIndexInT = Int(t.last!.unicodeScalars.first!.value - aASCIIValue!)
        new[lastIndexInT] += 1
        
        for index in 0..<new.count {
            if new[index] == 1 {
                return Character(UnicodeScalar(index + Int(aASCIIValue!))!)
            }
        }
        
        return Character("")
    }
}
