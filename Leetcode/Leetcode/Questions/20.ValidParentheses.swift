//
//  20.ValidParentheses.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/20/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false
 Example 4:

 Input: s = "([)]"
 Output: false
 Example 5:

 Input: s = "{[]}"
 Output: true
  

 Constraints:

 1 <= s.length <= 104
 s consists of parentheses only '()[]{}'.
 */

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        let validParentheses: [Character: Character] = [")": "(", "]" : "[", "}": "{"]
        var stack = [Character]()
        for char in s {
            if validParentheses.keys.contains(char) {
                // Pop last character
                if !stack.isEmpty {
                    let lastChar = stack.last
                    if lastChar == validParentheses[char]! {
                        stack.removeLast()
                    }
                    else {
                        return false
                    }
                }
                else {
                    return false
                }
            }
            else {
                stack.append(char)
            }
        }
        
        return stack.isEmpty
    }
}
