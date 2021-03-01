//
//  694.NumberOfDistinctIslands.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/8/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a non-empty 2D array grid of 0's and 1's, an island is a group of 1's (representing land) connected 4-directionally (horizontal or vertical.) You may assume all four edges of the grid are surrounded by water.

 Count the number of distinct islands. An island is considered to be the same as another if and only if one island can be translated (and not rotated or reflected) to equal the other.

 Example 1:

 11000
 11000
 00011
 00011
 Given the above grid map, return 1.
 Example 2:

 11011
 10000
 00001
 11011
 Given the above grid map, return 3.

 Notice that:
 11
 1
 and
  1
 11
 are considered different island shapes, because we do not consider reflection / rotation.
 Note: The length of each dimension in the given grid does not exceed 50.
 
 
 "X" - start
 "O" - water
 "L" - left
 "R" - right
 "U" - Up
 "D" - Down
 
 */

class NumberOfDistinctIslands {
    func numDistinctIslands(_ matrix: [[Int]]) -> Int {
        var seen = Set<String>()
        var grid = matrix
        let m = grid.count

        if m == 0 {
            return 0
        }

        let n = grid[0].count

        func dfsIslands(_ row: Int, _ col: Int, _ path: String) -> String {
            if row < 0 || col < 0 || row >= m || col >= n || grid[row][col] == 0 {
                return String("O")
            }
            grid[row][col] = 0

            let left = dfsIslands(row-1, col, "L")
            let right = dfsIslands(row+1, col, "R")
            let up = dfsIslands(row, col+1, "U")
            let down = dfsIslands(row, col-1, "D")

            return path+left+right+up+down
        }

        for row in 0..<m {
            for col in 0..<n {
                if (grid[row][col] == 1) {
                    let path = dfsIslands(row, col, String("X"))
                    seen.insert(path)
                }
            }
        }

        return seen.count
    }
}
