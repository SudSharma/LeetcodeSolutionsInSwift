//
//  127.WordLadder.swift
//  LeetcodeTests
//
//  Created by Sudarshan Sharma on 1/9/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given two words beginWord and endWord, and a dictionary wordList, return the length of the shortest transformation sequence from beginWord to endWord, such that:

 Only one letter can be changed at a time.
 Each transformed word must exist in the word list.
 Return 0 if there is no such transformation sequence.

  

 Example 1:

 Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
 Output: 5
 Explanation: As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog", return its length 5.
 Example 2:

 Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log"]
 Output: 0
 Explanation: The endWord "cog" is not in wordList, therefore no possible transformation.
  

 Constraints:

 1 <= beginWord.length <= 100
 endWord.length == beginWord.length
 1 <= wordList.length <= 5000
 wordList[i].length == beginWord.length
 beginWord, endWord, and wordList[i] consist of lowercase English letters.
 beginWord != endWord
 All the strings in wordList are unique.
 */

class WordLadder {
    func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
        if !wordList.contains(endWord)
        {
            return 0
        }
        
        let dict = Set(wordList)
        var beginSet = Set<String>()
        var endSet = Set<String>()
        var visitedSet = Set<String>()
        var length = 1
        var found = false
        
        beginSet.insert(beginWord)
        endSet.insert(endWord)
        
        while !found && !beginSet.isEmpty && !endSet.isEmpty {
            var nextSet = Set<String>()
            //accelerating search speed by swap begin and end
            if beginSet.count > endSet.count {
                swap(&beginSet, &endSet)
            }
            found = helper(beginSet, endSet, dict, &visitedSet, &nextSet)
            beginSet = nextSet
            length += 1
        }
        return found ? length : 0
    }
    
    private func helper(_ beginSet: Set<String>, _ endSet: Set<String>, _ dict: Set<String>,
                        _ visitedSet: inout Set<String>, _ resSet: inout Set<String>) -> Bool {
        
        let alphaArray = Array("abcdefghijklmnopqrstuvwxyz")
        
        for word in beginSet {
            for i in 0 ..< word.count {
                var chars = Array(word)
                for j in 0 ..< alphaArray.count{
                    chars[i] = alphaArray[j]
                    let str = String(chars)
                    if dict.contains(str) {
                        if endSet.contains(str)
                        {
                            return true
                        }
                        if !visitedSet.contains(str)
                        {
                            resSet.insert(str)
                            visitedSet.insert(str)
                        }
                    }
                }
            }
        }
        return false
    }
}
