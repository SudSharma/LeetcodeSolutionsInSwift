//
//  339.NestedListWeightSum.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/20/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 You are given a nested list of integers nestedList. Each element is either an integer or a list whose elements may also be integers or other lists.

 The depth of an integer is the number of lists that it is inside of. For example, the nested list [1,[2,2],[[3],2],1] has each integer's value set to its depth.

 Return the sum of each integer in nestedList multiplied by its depth.

  

 Example 1:


 Input: nestedList = [[1,1],2,[1,1]]
 Output: 10
 Explanation: Four 1's at depth 2, one 2 at depth 1. 1*2 + 1*2 + 2*1 + 1*2 + 1*2 = 10.
 Example 2:


 Input: nestedList = [1,[4,[6]]]
 Output: 27
 Explanation: One 1 at depth 1, one 4 at depth 2, and one 6 at depth 3. 1*1 + 4*2 + 6*3 = 27.
 Example 3:

 Input: nestedList = [0]
 Output: 0
  

 Constraints:

 1 <= nestedList.length <= 50
 The values of the integers in the nested list is in the range [-100, 100].
 The maximum depth of any integer is less than or equal to 50.
 */


class NestedInteger {
    var storage = [NestedInteger]()
    
    // Return true if this NestedInteger holds a single integer, rather than a nested list.
    public func isInteger() -> Bool {
        return getList().isEmpty
    }
    
    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    public func getInteger() -> Int {
        return -1
    }
    
    // Set this NestedInteger to hold a single integer.
    public func setInteger(value: Int) {
        
    }
    
    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    public func add(elem: NestedInteger) {
        storage.append(elem)
    }
    
    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    public func getList() -> [NestedInteger] {
        return storage
    }
}

class NestedListWeightSum {
    func depthSum(nestedList: [NestedInteger]) -> Int {
        return helper(nestedList, 1)
    }
    
    private func helper(_ nestedList: [NestedInteger], _ depth: Int) -> Int {
        var res = 0
        
        for nestedInt in nestedList {
            if nestedInt.isInteger() {
                res += nestedInt.getInteger() * depth
            } else {
                res += helper(nestedInt.getList(), depth + 1)
            }
        }
        
        return res
    }
}
