//
//  1165.SingleRowKeyboard.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 3/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 There is a special keyboard with all keys in a single row.

 Given a string keyboard of length 26 indicating the layout of the keyboard (indexed from 0 to 25), initially your finger is at index 0. To type a character, you have to move your finger to the index of the desired character. The time taken to move your finger from index i to index j is |i - j|.

 You want to type a string word. Write a function to calculate how much time it takes to type it with one finger.

  

 Example 1:

 Input: keyboard = "abcdefghijklmnopqrstuvwxyz", word = "cba"
 Output: 4
 Explanation: The index moves from 0 to 2 to write 'c' then to 1 to write 'b' then to 0 again to write 'a'.
 Total time = 2 + 1 + 1 = 4.
 Example 2:

 Input: keyboard = "pqrstuvwxyzabcdefghijklmno", word = "leetcode"
 Output: 73
  

 Constraints:

 keyboard.length == 26
 keyboard contains each English lowercase letter exactly once in some order.
 1 <= word.length <= 10^4
 word[i] is an English lowercase letter.
 */

class SingleRowKeyboard {
    func calculateTime(_ keyboard: String, _ word: String) -> Int {
        var map = [Character: Int]()
        for index in 0..<keyboard.count {
            map[keyboard[keyboard.index(keyboard.startIndex, offsetBy: index)]] = index
        }
        
        var previous = word[word.startIndex]
        var distance = abs(map[previous]! - map[keyboard[keyboard.startIndex]]!)
        for index in 1..<word.count {
            let current = word[word.index(word.startIndex, offsetBy: index)]
            distance += abs(map[previous]! - map[current]!)
            previous = current
        }
        
        return distance
    }
}
