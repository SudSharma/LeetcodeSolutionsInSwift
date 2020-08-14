//
//  1286.IteratorForCombination.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Iterator for Combination
 Design an Iterator class, which has:

 A constructor that takes a string characters of sorted distinct lowercase English letters and a number combinationLength as arguments.
 A function next() that returns the next combination of length combinationLength in lexicographical order.
 A function hasNext() that returns True if and only if there exists a next combination.
  

 Example:

 CombinationIterator iterator = new CombinationIterator("abc", 2); // creates the iterator.

 iterator.next(); // returns "ab"
 iterator.hasNext(); // returns true
 iterator.next(); // returns "ac"
 iterator.hasNext(); // returns true
 iterator.next(); // returns "bc"
 iterator.hasNext(); // returns false
  

 Constraints:

 1 <= combinationLength <= characters.length <= 15
 There will be at most 10^4 function calls per test.
 It's guaranteed that all calls of the function next are valid.
 */

class CombinationIterator {
    let combinationLength: Int
    let originalCharacters: String
    var possibleCombinations: [String]
    
    init(_ characters: String, _ combinationLength: Int) {
        possibleCombinations = [String]()
        self.combinationLength = combinationLength
        originalCharacters = characters
        
        combinations(source: Array(characters), takenBy: combinationLength).forEach({ charArray in
            var string = ""
            for char in charArray {
                string.append(char)
            }
            possibleCombinations.append(string)
        })
    }
    
    func next() -> String {
        return possibleCombinations.remove(at: 0)
    }
    
    func hasNext() -> Bool {
        return !possibleCombinations.isEmpty
    }
    
    func combinations(source: [Character], takenBy : Int) -> [[Character]] {
        if(source.count == takenBy) {
            return [source]
        }

        if(source.isEmpty) {
            return []
        }

        if(takenBy == 0) {
            return []
        }

        if(takenBy == 1) {
            return source.map { [$0] }
        }

        var result : [[Character]] = []
        
        let rest = Array(source.suffix(from: 1))
        let subCombos = combinations(source: rest, takenBy: takenBy - 1)
        result += subCombos.map { [source[0]] + $0 }
        result += combinations(source: rest, takenBy: takenBy)
        return result
    }
}
