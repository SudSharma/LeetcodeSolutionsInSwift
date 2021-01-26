//
//  266.PalindromePermutation.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string, determine if a permutation of the string could form a palindrome.

 Example 1:

 Input: "code"
 Output: false
 Example 2:

 Input: "aab"
 Output: true
 Example 3:

 Input: "carerac"
 Output: true
    Hide Hint #1
 Consider the palindromes of odd vs even length. What difference do you notice?
    Hide Hint #2
 Count the frequency of each character.
    Show Hint #3
 If each character occurs even number of times, then it must be a palindrome. How about character which occurs odd number of times?
 */

class PalindromePermutation {
    func canPermutePalindrome(_ s: String) -> Bool {
        var set = Set<Character>()
        for char in s {
            if set.contains(char) {
                set.remove(char)
            }
            else {
                set.insert(char)
            }
        }
        
        return set.count <= 1
    }
}
