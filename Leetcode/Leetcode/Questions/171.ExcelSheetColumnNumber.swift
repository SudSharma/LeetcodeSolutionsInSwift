//
//  171.ExcelSheetColumnNumber.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Excel Sheet Column Number
 Given a column title as appear in an Excel sheet, return its corresponding column number.

 For example:

     A -> 1
     B -> 2
     C -> 3
     ...
     Z -> 26
     AA -> 27
     AB -> 28
     ...
 Example 1:

 Input: "A"
 Output: 1
 Example 2:

 Input: "AB"
 Output: 28
 Example 3:

 Input: "ZY"
 Output: 701
  

 Constraints:

 1 <= s.length <= 7
 s consists only of uppercase English letters.
 s is between "A" and "FXSHRXW".
 */

import Foundation

class ExcelSheetColumnNumber {
    func titleToNumber(_ s: String) -> Int {
        var res = 0
        for i in s.utf8 {
            res = res * 26 + (Int(i) - 64)
        }
        
        return res
    }
}
