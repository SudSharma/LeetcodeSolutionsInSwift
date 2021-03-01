//
//  856.ScoreOfParentheses.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/24/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a balanced parentheses string S, compute the score of the string based on the following rule:

 () has score 1
 AB has score A + B, where A and B are balanced parentheses strings.
 (A) has score 2 * A, where A is a balanced parentheses string.
  

 Example 1:

 Input: "()"
 Output: 1
 Example 2:

 Input: "(())"
 Output: 2
 Example 3:

 Input: "()()"
 Output: 2
 Example 4:

 Input: "(()(()))"
 Output: 6
  

 Note:

 S is a balanced parentheses string, containing only ( and ).
 2 <= S.length <= 50
 */

class ScoreOfParentheses {
    func scoreOfParentheses(_ S: String) -> Int {
        let s = Array(S)
        var stack: [String] = []
        
        s.forEach {
            let c = String($0)
            if c == "(" {
                stack.append(c)
            }
            else {
                if stack.last! == "(" {
                    stack[stack.count-1] = "1"
                }
                else {
                    var total = 0
                    while stack.last! != "(" {
                        total += Int(stack.removeLast())!
                    }
                    stack.removeLast()
                    stack.append(String(2*total))
                }
            }
        }
        
        return stack.map{Int($0)!}.reduce(0,+)
    }
}
