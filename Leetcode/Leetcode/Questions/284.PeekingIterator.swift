//
//  284.PeekingIterator.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

// Apple

/*
 Given an Iterator class interface with methods: next() and hasNext(), design and implement a PeekingIterator that support the peek() operation -- it essentially peek() at the element that will be returned by the next call to next().

 Example:

 Assume that the iterator is initialized to the beginning of the list: [1,2,3].

 Call next() gets you 1, the first element in the list.
 Now you call peek() and it returns 2, the next element. Calling next() after that still return 2.
 You call next() the final time and it returns 3, the last element.
 Calling hasNext() after that should return false.
 Follow up: How would you extend your design to be generic and work with all types, not just integer?
 */

// Swift IndexingIterator refernence:
// https://developer.apple.com/documentation/swift/indexingiterator

class PeekingIterator {
    var currentIndex = -1
    var storage: [Int]
    
    init(_ arr: IndexingIterator<Array<Int>>) {
        storage = arr.map( {$0 })
    }
    
    func next() -> Int {
        if hasNext() {
            currentIndex += 1
            let next = storage[currentIndex]
            return next
        }
        
        return -1
    }
    
    func peek() -> Int {
        if hasNext() {
            return storage[currentIndex + 1]
        }
        
        return -1
    }
    
    func hasNext() -> Bool {
        return currentIndex + 1 < storage.count
    }
}

class PeekingIterator_Old {
    
    var elements = [Int]()
    var indexingIterator: IndexingIterator<Array<Int>>
    var hasPeeked = false
    var peekedElement: Int?
    
    init(_ arr: IndexingIterator<Array<Int>>) {
        indexingIterator = arr
        indexingIterator.forEach { item in
            self.elements.append(item)
        }
    }
    
    func next() -> Int {
        if !hasPeeked {
            elements.removeFirst()
            return indexingIterator.next()!
        }
        
        hasPeeked = false
        defer {
            peekedElement = nil
        }
        return peekedElement ?? -1
    }
    
    func peek() -> Int {
        if !hasPeeked {
            elements.removeFirst()
            peekedElement = indexingIterator.next()
            hasPeeked = true
        }
        
        return peekedElement ?? -1
    }
    
    func hasNext() -> Bool {
        return hasPeeked || elements.count > 0
    }
}
