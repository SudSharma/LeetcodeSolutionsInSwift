//
//  326.PowerOfThree.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/10/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an integer n, return true if it is a power of three. Otherwise, return false.

 An integer n is a power of three, if there exists an integer x such that n == 3x.

  

 Example 1:

 Input: n = 27
 Output: true
 Example 2:

 Input: n = 0
 Output: false
 Example 3:

 Input: n = 9
 Output: true
 Example 4:

 Input: n = 45
 Output: false
  

 Constraints:

 -231 <= n <= 231 - 1
 */

class PowerOfThree {
    func isPowerOfThree(_ n: Int) -> Bool {
        if n == 0 {
            return false
        }
        
        var tempN = n
        while tempN % 9 == 0 {
            tempN /= 9
        }
        
        return tempN == 1 || tempN == 3
    }
}
