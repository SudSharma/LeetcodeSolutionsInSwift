//
//  1649.CreateSortedArrayThroughInstructions.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/10/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given an integer array instructions, you are asked to create a sorted array from the elements in instructions. You start with an empty container nums. For each element from left to right in instructions, insert it into nums. The cost of each insertion is the minimum of the following:

 The number of elements currently in nums that are strictly less than instructions[i].
 The number of elements currently in nums that are strictly greater than instructions[i].
 For example, if inserting element 3 into nums = [1,2,3,5], the cost of insertion is min(2, 1) (elements 1 and 2 are less than 3, element 5 is greater than 3) and nums will become [1,2,3,3,5].

 Return the total cost to insert all elements from instructions into nums. Since the answer may be large, return it modulo 109 + 7

  

 Example 1:

 Input: instructions = [1,5,6,2]
 Output: 1
 Explanation: Begin with nums = [].
 Insert 1 with cost min(0, 0) = 0, now nums = [1].
 Insert 5 with cost min(1, 0) = 0, now nums = [1,5].
 Insert 6 with cost min(2, 0) = 0, now nums = [1,5,6].
 Insert 2 with cost min(1, 2) = 1, now nums = [1,2,5,6].
 The total cost is 0 + 0 + 0 + 1 = 1.
 Example 2:

 Input: instructions = [1,2,3,6,5,4]
 Output: 3
 Explanation: Begin with nums = [].
 Insert 1 with cost min(0, 0) = 0, now nums = [1].
 Insert 2 with cost min(1, 0) = 0, now nums = [1,2].
 Insert 3 with cost min(2, 0) = 0, now nums = [1,2,3].
 Insert 6 with cost min(3, 0) = 0, now nums = [1,2,3,6].
 Insert 5 with cost min(3, 1) = 1, now nums = [1,2,3,5,6].
 Insert 4 with cost min(3, 2) = 2, now nums = [1,2,3,4,5,6].
 The total cost is 0 + 0 + 0 + 0 + 1 + 2 = 3.
 Example 3:

 Input: instructions = [1,3,3,3,2,4,2,1,2]
 Output: 4
 Explanation: Begin with nums = [].
 Insert 1 with cost min(0, 0) = 0, now nums = [1].
 Insert 3 with cost min(1, 0) = 0, now nums = [1,3].
 Insert 3 with cost min(1, 0) = 0, now nums = [1,3,3].
 Insert 3 with cost min(1, 0) = 0, now nums = [1,3,3,3].
 Insert 2 with cost min(1, 3) = 1, now nums = [1,2,3,3,3].
 Insert 4 with cost min(5, 0) = 0, now nums = [1,2,3,3,3,4].
 ​​​​​​​Insert 2 with cost min(1, 4) = 1, now nums = [1,2,2,3,3,3,4].
 ​​​​​​​Insert 1 with cost min(0, 6) = 0, now nums = [1,1,2,2,3,3,3,4].
 ​​​​​​​Insert 2 with cost min(2, 4) = 2, now nums = [1,1,2,2,2,3,3,3,4].
 The total cost is 0 + 0 + 0 + 0 + 1 + 0 + 1 + 0 + 2 = 4.
  

 Constraints:

 1 <= instructions.length <= 105
 1 <= instructions[i] <= 105
 */

class CreateSortedArrayThroughInstructions {
    func createSortedArray1(_ instructions: [Int]) -> Int {
        var nums = [Int]()
        var cost = 0
        for i in instructions {
            let n = nums.count
            let insertPoint = getInsertPoint(nums, i, n - 1)
            nums.insert(i, at: insertPoint)
            let end = findLastIndex(nums, i, n)
            cost += min(insertPoint, nums.count - (end + 1))
        }
        
        let mod = 1000000007
        return cost % mod
    }
    
    func findLastIndex(_ nums: [Int], _ val: Int, _ n: Int) -> Int {
        var start = 0
        var end = n
        var index = -1
        
        while start <= end {
            let mid = (start + end) / 2
            if nums[mid] > val {
                end = mid - 1
            }
            else if nums[mid] < val {
                start = mid + 1
            }
            else {
                index = mid
                start = mid + 1
            }
        }
        
        return index
    }
    
    func getInsertPoint(_ nums: [Int], _ val: Int, _ n: Int) -> Int {
        var start = 0
        var end = n
        while start <= end {
            let mid = (start + end) / 2
            if nums[mid] < val {
                start = mid + 1
            }
            else {
                end = mid - 1
            }
        }
        
        return start
    }
    
    func createSortedArray(_ instructions: [Int]) -> Int {
        // Init tree ensuring we have a node for each number
        let tree = BinaryIndexTree(instructions.max()! + 2)
        var cost = 0
        for i in 0..<instructions.count {
            let leftCost = tree.getCost(instructions[i])
            let rightCost = i - tree.getCost(instructions[i] + 1)
            cost += min(leftCost, rightCost)
            tree.update(instructions[i] + 1, 1)
        }
        
        return cost % 1000000007
    }
}

class BinaryIndexTree {
    var space: Int
    var tree = [Int]()
    
    init(_ space: Int) {
        self.space = space
        // Init tree to all zeros with 'space' nodes
        self.tree = Array(repeating: 0, count: space)
    }
    
    func getCost(_ newIndex: Int) -> Int {
        var result = 0
        var index = newIndex
        while index >= 1 {
            result += self.tree[index]
            index -= index & -index
        }
        
        return result
    }
    
    func update(_ newIndex: Int, _ value: Int) {
        var index = newIndex
        while index < self.space {
            self.tree[index] += value
            index += index & -index
        }
    }
}
