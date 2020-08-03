//
//  705.DesignHashSet.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 8/2/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Design a HashSet without using any built-in hash table libraries.

 To be specific, your design should include these functions:

 add(value): Insert a value into the HashSet.
 contains(value) : Return whether the value exists in the HashSet or not.
 remove(value): Remove a value in the HashSet. If the value does not exist in the HashSet, do nothing.

 Example:

 MyHashSet hashSet = new MyHashSet();
 hashSet.add(1);
 hashSet.add(2);
 hashSet.contains(1);    // returns true
 hashSet.contains(3);    // returns false (not found)
 hashSet.add(2);
 hashSet.contains(2);    // returns true
 hashSet.remove(2);
 hashSet.contains(2);    // returns false (already removed)

 Note:

 All values will be in the range of [0, 1000000].
 The number of operations will be in the range of [1, 10000].
 Please do not use the built-in HashSet library.
 */

class MyHashSet {
    var set: [Int]
    
    /** Initialize your data structure here. */
    init() {
        set = Array(repeating: 0, count: 1000000)
    }
    
    func add(_ key: Int) {
        if set[key] == 0 {
            set[key] = 1
        }
    }
    
    func remove(_ key: Int) {
        set[key] = 0
    }
    
    /** Returns true if this set contains the specified element */
    func contains(_ key: Int) -> Bool {
        return set[key] == 1
    }
}

