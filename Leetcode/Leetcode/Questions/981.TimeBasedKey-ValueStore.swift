//
//  981.TimeBasedKey-ValueStore.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/13/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Create a timebased key-value store class TimeMap, that supports two operations.

 1. set(string key, string value, int timestamp)

 Stores the key and value, along with the given timestamp.
 2. get(string key, int timestamp)

 Returns a value such that set(key, value, timestamp_prev) was called previously, with timestamp_prev <= timestamp.
 If there are multiple such values, it returns the one with the largest timestamp_prev.
 If there are no values, it returns the empty string ("").
  

 Example 1:

 Input: inputs = ["TimeMap","set","get","get","set","get","get"], inputs = [[],["foo","bar",1],["foo",1],["foo",3],["foo","bar2",4],["foo",4],["foo",5]]
 Output: [null,null,"bar","bar",null,"bar2","bar2"]
 Explanation:
 TimeMap kv;
 kv.set("foo", "bar", 1); // store the key "foo" and value "bar" along with timestamp = 1
 kv.get("foo", 1);  // output "bar"
 kv.get("foo", 3); // output "bar" since there is no value corresponding to foo at timestamp 3 and timestamp 2, then the only value is at timestamp 1 ie "bar"
 kv.set("foo", "bar2", 4);
 kv.get("foo", 4); // output "bar2"
 kv.get("foo", 5); //output "bar2"

 Example 2:

 Input: inputs = ["TimeMap","set","set","get","get","get","get","get"], inputs = [[],["love","high",10],["love","low",20],["love",5],["love",10],["love",15],["love",20],["love",25]]
 Output: [null,null,null,"","high","high","low","low"]
  

 Note:

 All key/value strings are lowercase.
 All key/value strings have length in the range [1, 100]
 The timestamps for all TimeMap.set operations are strictly increasing.
 1 <= timestamp <= 10^7
 TimeMap.set and TimeMap.get functions will be called a total of 120000 times (combined) per test case.
 */

class TimeMap {
    var internalMap: [String: [Int: String]]
    
    /** Initialize your data structure here. */
    init() {
        internalMap = [String: [Int: String]]()
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if var alreadyExists = internalMap[key] {
            alreadyExists[timestamp] = value
            internalMap[key] = alreadyExists
            return
        }
        
        internalMap[key] = [timestamp: value]
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        var value = ""
        if let alreadyExists = internalMap[key] {
            var low = 0
            var high = alreadyExists.keys.count - 1
            let sortedKeys = alreadyExists.keys.sorted(by: <)
            
            while low <= high {
                let mid = (low + high) / 2
                if sortedKeys[mid] <= timestamp {
                    value = alreadyExists[sortedKeys[mid]]!
                    low = mid + 1
                }
                else {
                   high = mid - 1
                }
            }
        }
        
        return value
    }
}

class Node1: CustomStringConvertible {
    var description: String {
        return "Timestamp - \(timestamp), Value - \(value), Next - \(String(describing: next))"
    }
    var next: Node1?
    let timestamp: Int
    let value: String
    
    init(_ timestamp: Int, _ value: String, next: Node1? = nil) {
        self.timestamp = timestamp
        self.value = value
        self.next = next
    }
}

// Time Limit Exceeded
class TimeMap1 {
    var internalMap: [String: Node1]
    
    /** Initialize your data structure here. */
    init() {
        internalMap = [String: Node1]()
    }
    
    func set(_ key: String, _ value: String, _ timestamp: Int) {
        if let alreadyExistingNode = internalMap[key] {
            var currentNode = alreadyExistingNode
            var alreadyExists = false
            while true {
                if currentNode.value == value, currentNode.timestamp == timestamp {
                    alreadyExists = true
                    break
                }
                
                if let next = currentNode.next {
                    currentNode = next
                }
                else {
                    break
                }
            }
            
            if !alreadyExists {
                currentNode.next = Node1(timestamp, value)
            }
            
            return
        }
        
        internalMap[key] = Node1(timestamp, value)
    }
    
    func get(_ key: String, _ timestamp: Int) -> String {
        if let alreadyExistingNode = internalMap[key] {
            var currentNode = alreadyExistingNode
            var matchedNode: Node1?
            while true {
                if currentNode.timestamp <= timestamp {
                    if let tempMatchedNode = matchedNode, tempMatchedNode.timestamp > currentNode.timestamp {
                        return tempMatchedNode.value
                    }
                    else {
                        matchedNode = currentNode
                    }
                }
                
                if let next = currentNode.next {
                    currentNode = next
                }
                else {
                    break
                }
            }
            
            if let tempMatchedNode = matchedNode {
                return tempMatchedNode.value
            }
        }
        
        return ""
    }
}
