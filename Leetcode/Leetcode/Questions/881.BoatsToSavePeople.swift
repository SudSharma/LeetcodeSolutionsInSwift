//
//  881.BoatsToSavePeople.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/13/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 The i-th person has weight people[i], and each boat can carry a maximum weight of limit.

 Each boat carries at most 2 people at the same time, provided the sum of the weight of those people is at most limit.

 Return the minimum number of boats to carry every given person.  (It is guaranteed each person can be carried by a boat.)

  

 Example 1:

 Input: people = [1,2], limit = 3
 Output: 1
 Explanation: 1 boat (1, 2)
 Example 2:

 Input: people = [3,2,2,1], limit = 3
 Output: 3
 Explanation: 3 boats (1, 2), (2) and (3)
 Example 3:

 Input: people = [3,5,3,4], limit = 5
 Output: 4
 Explanation: 4 boats (3), (3), (4), (5)
 Note:

 1 <= people.length <= 50000
 1 <= people[i] <= limit <= 30000
 */

class BoatsToSavePeople {
    func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
        let sortedPeople = people.sorted()
        var leftIndex = 0
        var rightIndex = people.count - 1
        var rescued = 0
        
        while leftIndex <= rightIndex {
            rescued += 1
            if (sortedPeople[leftIndex] + sortedPeople[rightIndex] <= limit) {
                leftIndex += 1
            }
            rightIndex -= 1
        }
        
        return rescued
    }
}
