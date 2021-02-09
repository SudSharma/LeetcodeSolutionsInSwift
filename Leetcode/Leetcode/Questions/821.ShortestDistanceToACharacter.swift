//
//  821.ShortestDistanceToACharacter.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/7/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string s and a character c that occurs in s, return an array of integers answer where answer.length == s.length and answer[i] is the shortest distance from s[i] to the character c in s.

  

 Example 1:

 Input: s = "loveleetcode", c = "e"
 Output: [3,2,1,0,1,0,0,1,2,2,1,0]
 Example 2:

 Input: s = "aaab", c = "b"
 Output: [3,2,1,0]
  

 Constraints:

 1 <= s.length <= 104
 s[i] and c are lowercase English letters.
 c occurs at least once in s.
 */

class ShortestDistanceToACharacter {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        var distance = [Int]()
        var indexesOfC = [Int]()
        
        for index in 0..<s.count {
            if s[s.index(s.startIndex, offsetBy: index)] == c {
                indexesOfC.append(index)
            }
        }
        
        for index in 0..<s.count {
            var diff = Int.max
            for indexOfC in indexesOfC {
                diff = min(diff, abs(indexOfC - index))
            }
            distance.append(diff)
        }
        
        return distance
    }
}
