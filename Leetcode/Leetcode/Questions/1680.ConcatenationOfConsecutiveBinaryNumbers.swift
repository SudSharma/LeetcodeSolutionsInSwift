//
//  1680.ConcatenationOfConsecutiveBinaryNumbers.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/27/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an integer n, return the decimal value of the binary string formed by concatenating the binary representations of 1 to n in order, modulo 109 + 7.

  

 Example 1:

 Input: n = 1
 Output: 1
 Explanation: "1" in binary corresponds to the decimal value 1.
 Example 2:

 Input: n = 3
 Output: 27
 Explanation: In binary, 1, 2, and 3 corresponds to "1", "10", and "11".
 After concatenating them, we have "11011", which corresponds to the decimal value 27.
 Example 3:

 Input: n = 12
 Output: 505379714
 Explanation: The concatenation results in "1101110010111011110001001101010111100".
 The decimal value of that is 118505380540.
 After modulo 109 + 7, the result is 505379714.
  

 Constraints:

 1 <= n <= 105
 */

// https://www.geeksforgeeks.org/modulo-1097-1000000007/

class ConcatenationOfConsecutiveBinaryNumbers {
    func concatenatedBinary(_ n: Int) -> Int {
        guard n > 1 else {
            return 1
        }
        
        let d = 1_000_000_007
        var x = 1
        for i in stride(from: 2, through: n, by: 1) {
            x = ((x << (i.bitWidth - i.leadingZeroBitCount)) + i) % d
        }
        return x
    }
}
