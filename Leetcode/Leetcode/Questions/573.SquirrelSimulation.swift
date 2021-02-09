//
//  573.SquirrelSimulation.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/1/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 There's a tree, a squirrel, and several nuts. Positions are represented by the cells in a 2D grid. Your goal is to find the minimal distance for the squirrel to collect all the nuts and put them under the tree one by one. The squirrel can only take at most one nut at one time and can move in four directions - up, down, left and right, to the adjacent cell. The distance is represented by the number of moves.
 Example 1:

 Input:
 Height : 5
 Width : 7
 Tree position : [2,2]
 Squirrel : [4,4]
 Nuts : [[3,0], [2,5]]
 Output: 12
 Explanation:
 ​​​​​
 Note:

 All given positions won't overlap.
 The squirrel can take at most one nut at one time.
 The given positions of nuts have no order.
 Height and width are positive integers. 3 <= height * width <= 10,000.
 The given positions contain at least one nut, only one tree and one squirrel.
 */

class SquirrelSimulation {
    func minDistance(_ height: Int, _ width: Int, _ tree: [Int], _ squirrel: [Int], _ nuts: [[Int]]) -> Int {
        var res = 0
        var maxDiff = Int.min
        
        for nut in nuts {
            let distance = abs(tree[0] - nut[0]) + abs(tree[1] - nut[1])
            res += 2*distance
            maxDiff = max(maxDiff, distance - abs(squirrel[0] - nut[0]) - abs(squirrel[1] - nut[1]))
        }
        
        return res - maxDiff
    }
    
    func minDistance1(_ height: Int, _ width: Int, _ tree: [Int], _ squirrel: [Int], _ nuts: [[Int]]) -> Int {
        var nutsDistances = [(Int, Int)]()
        
        for nut in nuts {
            let nutDistanceFromTree = abs(nut[0] - tree[0]) + abs(nut[1] - tree[1])
            let nutDistanceFromSquirrel = abs(nut[0] - squirrel[0]) + abs(nut[1] - squirrel[1])
            nutsDistances.append((nutDistanceFromTree, nutDistanceFromSquirrel))
        }
        
        var totalDistance = 0
        if let minimum = nutsDistances.min(by: {
            if $0.1 == $1.1 {
                return $0.0 > $1.0
            }
            else {
                return $0.1 < $1.1
            }
        }) {
            let minimumIndex = nutsDistances.firstIndex { $0.0 == minimum.0 && $0.1 == minimum.1 }
            totalDistance = nutsDistances[minimumIndex!].0 + nutsDistances[minimumIndex!].1
            
            for index in 0..<nutsDistances.count {
                if index != minimumIndex {
                    totalDistance += nutsDistances[index].0*2
                }
            }
        }
        
        return totalDistance
    }
}
