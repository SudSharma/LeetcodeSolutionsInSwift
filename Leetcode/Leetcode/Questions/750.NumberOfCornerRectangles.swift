//
//  750.NumberOfCornerRectangles.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/29/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a grid where each entry is only 0 or 1, find the number of corner rectangles.

 A corner rectangle is 4 distinct 1s on the grid that form an axis-aligned rectangle. Note that only the corners need to have the value 1. Also, all four 1s used must be distinct.

  

 Example 1:

 Input: grid =
 [[1, 0, 0, 1, 0],
  [0, 0, 1, 0, 1],
  [0, 0, 0, 1, 0],
  [1, 0, 1, 0, 1]]
 Output: 1
 Explanation: There is only one corner rectangle, with corners grid[1][2], grid[1][4], grid[3][2], grid[3][4].
  

 Example 2:

 Input: grid =
 [[1, 1, 1],
  [1, 1, 1],
  [1, 1, 1]]
 Output: 9
 Explanation: There are four 2x2 rectangles, four 2x3 and 3x2 rectangles, and one 3x3 rectangle.
  

 Example 3:

 Input: grid =
 [[1, 1, 1, 1]]
 Output: 0
 Explanation: Rectangles must have four distinct corners.
  

 Note:

 The number of rows and columns of grid will each be in the range [1, 200].
 Each grid[i][j] will be either 0 or 1.
 The number of 1s in the grid will be at most 6000.

 */

class NumberOfCornerRectangles {
    func countCornerRectangles(_ grid: [[Int]]) -> Int {
        if grid.isEmpty || grid.count < 2 || grid[0].count < 2 {
            return 0
        }
        
        var map = [Int: Int]()
        var ans = 0
        let m = grid.count
        let n = grid[0].count
        
        for r1 in 0..<m {
            for r2 in r1+1..<m {
                for c in 0..<n {
                    if (grid[r1][c] == 1 && grid[r2][c] == 1) {
                        let pos = r1 * n + r2
                        if let tempVal = map[pos] {
                            let val = tempVal
                            ans += val
                            map[pos] = val + 1
                        }
                        else {
                            map[pos] = 1
                        }
                    }
                }
            }
        }
        
        return ans
    }
}
