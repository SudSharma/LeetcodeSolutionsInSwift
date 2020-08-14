//
//  211.AddAndSearchWordDataStructureDesign.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/5/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Add and Search Word - Data structure design
 Design a data structure that supports the following two operations:

 void addWord(word)
 bool search(word)
 search(word) can search a literal word or a regular expression string containing only letters a-z or .. A . means it can represent any one letter.

 Example:

 addWord("bad")
 addWord("dad")
 addWord("mad")
 search("pad") -> false
 search("bad") -> true
 search(".ad") -> true
 search("b..") -> true
 Note:
 You may assume that all words are consist of lowercase letters a-z.
 */

class TrieNode: CustomStringConvertible {
    var children: [Character: TrieNode]
    var description: String {
        return children.keys.description + children.values.description
    }
    var isFinal = false
    var value: Character?
    
    init(_ value: Character? = nil, children: [Character: TrieNode]) {
        self.value = value
        self.children = children
    }
}

class WordDictionary {
    let root: TrieNode
    
    /** Initialize your data structure here. */
    init() {
        root = TrieNode(children: [Character: TrieNode]())
    }
    
    /** Adds a word into the data structure. */
    func addWord(_ word: String) {
        var currentNode = root
        for char in word {
            if let alreadyExistingNode = currentNode.children[char] {
                currentNode = alreadyExistingNode
            }
            else {
                let newNode = TrieNode(char, children: [Character: TrieNode]())
                currentNode.children[char] = newNode
                currentNode = newNode
            }
        }
        currentNode.isFinal = true
    }
    
    /** Returns if the word is in the data structure. A word could contain the dot character '.' to represent any one letter. */
    func search(_ word: String) -> Bool {
        return search(Array(word), 0, self.root)
    }
    
    func search(_ wArr: [Character], _ i: Int, _ node: TrieNode) -> Bool {
        if i == wArr.count {
            return node.isFinal
        }

        if wArr[i] == "." {
            for (_, val) in node.children {
                if search(wArr, i+1, val) {
                    return true
                }
            }
        } else {
            if let val = node.children[wArr[i]] {
                return search(wArr, i+1, val)
            } else {
                return false
            }
        }
        
        return false
    }
}
