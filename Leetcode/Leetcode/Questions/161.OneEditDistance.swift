//
//  161.OneEditDistance.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/22/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given two strings s and t, return true if they are both one edit distance apart, otherwise return false.

 A string s is said to be one distance apart from a string t if you can:

 Insert exactly one character into s to get t.
 Delete exactly one character from s to get t.
 Replace exactly one character of s with a different character to get t.
  

 Example 1:
 Input: s = "ab", t = "acb"
 Output: true
 Explanation: We can insert 'c' into s to get t.
 
 Example 2:
 Input: s = "", t = ""
 Output: false
 Explanation: We cannot get t from s by only one step.
 
 Example 3:
 Input: s = "a", t = ""
 Output: true
 
 Example 4:
 Input: s = "", t = "A"
 Output: true
  

 Constraints:

 0 <= s.length <= 104
 0 <= t.length <= 104
 s and t consist of lower-case letters, upper-case letters and/or digits.
 */

class OneEditDistance {
    func isOneEditDistance(_ s: String, _ t: String) -> Bool {
        if !(-1...1 ~= t.count - s.count) || (t.isEmpty && s.isEmpty) {
            return false
        }
        
        var modifiedS = s
        var modifiedT = t
        var isSToBeModified = false
        var isTToBeModified = false
        if s.count < t.count {
            modifiedS += " "
            isSToBeModified = true
        }
        else if s.count > t.count {
            modifiedT += " "
            isTToBeModified = true
        }
        
        var modificationCount = 0
        
        for i in 0..<modifiedT.count {
            if modificationCount >= 1 {
                break
            }
            if modifiedS[modifiedS.index(modifiedS.startIndex, offsetBy: i)] == modifiedT[modifiedT.index(modifiedT.startIndex, offsetBy: i)] {
                continue
            }
            else {
                if isSToBeModified {
                    modificationCount += 1
                    modifiedS.removeLast()
                    modifiedS.insert(modifiedT[modifiedT.index(modifiedT.startIndex, offsetBy: i)], at: modifiedS.index(modifiedS.startIndex, offsetBy: i))
                }
                else if isTToBeModified {
                    modificationCount += 1
                    modifiedS.remove(at: modifiedS.index(modifiedS.startIndex, offsetBy: i))
                    modifiedT.removeLast()
                }
                else {
                    let index = modifiedS.index(modifiedS.startIndex, offsetBy: i)
                    modifiedS.replaceSubrange(index...index, with: "\(modifiedT[modifiedT.index(modifiedT.startIndex, offsetBy: i)])")
                    modificationCount += 1
                }
            }
        }
        
        return modifiedS == modifiedT && modificationCount == 1
    }
}
