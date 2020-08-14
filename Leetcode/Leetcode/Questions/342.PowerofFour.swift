//
//  342.PowerofFour.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/4/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

import Foundation

class PowerofFour {
    func isPowerOfFourUsingLog(_ num: Int) -> Bool {
        if num == 0 {
            return false
        }
        
        let doubleValue = log(Double(num)) / log(Double(4))
        return floor(doubleValue) == doubleValue
    }
    
    func isPowerOfFour(_ num: Int) -> Bool {
        if num == 0 {
            return false
        }
        
        var n = num
        while n != 1 {
            if n % 4 != 0 {
                return false
            }
            
            n = n / 4
        }
        
        return true
    }
}
