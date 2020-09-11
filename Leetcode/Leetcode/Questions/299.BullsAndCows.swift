//
//  299.BullsAndCows.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 9/10/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 You are playing the following Bulls and Cows game with your friend: You write down a number and ask your friend to guess what the number is. Each time your friend makes a guess, you provide a hint that indicates how many digits in said guess match your secret number exactly in both digit and position (called "bulls") and how many digits match the secret number but locate in the wrong position (called "cows"). Your friend will use successive guesses and hints to eventually derive the secret number.

 Write a function to return a hint according to the secret number and friend's guess, use A to indicate the bulls and B to indicate the cows.

 Please note that both secret number and friend's guess may contain duplicate digits.

 Example 1:

 Input: secret = "1807", guess = "7810"

 Output: "1A3B"

 Explanation: 1 bull and 3 cows. The bull is 8, the cows are 0, 1 and 7.
 Example 2:

 Input: secret = "1123", guess = "0111"

 Output: "1A1B"

 Explanation: The 1st 1 in friend's guess is a bull, the 2nd or 3rd 1 is a cow.
 Note: You may assume that the secret number and your friend's guess only contain digits, and their lengths are always equal.
 */

class BullsAndCows {
    func getHint(_ secret: String, _ guess: String) -> String {
        var bullsCount = 0
        var cowsCount = 0
        var secretsDict = [Character: Int]()
        
        for index in 0..<secret.count {
            let secretChar = secret[secret.index(secret.startIndex, offsetBy: index)]
            let guessChar = guess[guess.index(guess.startIndex, offsetBy: index)]
            
            if secretChar == guessChar {
                bullsCount += 1
            }
            else {
                if let alreadyExistingCount = secretsDict[secretChar] {
                    secretsDict[secretChar] = alreadyExistingCount + 1
                }
                else {
                    secretsDict[secretChar] = 1
                }
            }
        }
        
        var guessDict = [Character: Int]()
        for guessChar in guess {
            guessDict[guessChar] = 0
        }
        
        for index in 0..<secret.count {
            let guessChar = guess[guess.index(guess.startIndex, offsetBy: index)]
            let secretChar = secret[secret.index(secret.startIndex, offsetBy: index)]
            
            if let secretContainsGuess = secretsDict[guessChar], secretChar != guessChar, guessDict[guessChar]! < secretContainsGuess {
                cowsCount += 1
                guessDict[guessChar]! = guessDict[guessChar]! + 1
            }
        }
        
        return "\(bullsCount)A\(cowsCount)B"
    }
}
