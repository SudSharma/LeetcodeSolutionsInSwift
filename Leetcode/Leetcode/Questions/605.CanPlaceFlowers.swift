//
//  605.CanPlaceFlowers.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/16/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

 Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule.

  

 Example 1:

 Input: flowerbed = [1,0,0,0,1], n = 1
 Output: true
 Example 2:

 Input: flowerbed = [1,0,0,0,1], n = 2
 Output: false
  

 Constraints:

 1 <= flowerbed.length <= 2 * 104
 flowerbed[i] is 0 or 1.
 There are no two adjacent flowers in flowerbed.
 0 <= n <= flowerbed.length
 */

class CanPlaceFlowers {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        if n == 0 {
            return true
        }
        if flowerbed.isEmpty {
            return false
        }
        
        var canPlaceFlowers = false
        var numberOfFlowers = n
        var current = 0
        var numberOfEmptyBed = 0
        for bed in flowerbed {
            if bed == 0 {
                if numberOfEmptyBed == 1 && current < flowerbed.count && flowerbed[current + 1] == 0 {
                    numberOfFlowers -= 1
                }
                numberOfEmptyBed += -1
            }
            current += 1
            
            if numberOfFlowers == 0 {
                canPlaceFlowers = true
                break
            }
        }
        
        return canPlaceFlowers
    }
}
