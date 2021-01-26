//
//  1329.SortTheMatrixDiagonally.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 1/23/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 A matrix diagonal is a diagonal line of cells starting from some cell in either the topmost row or leftmost column and going in the bottom-right direction until reaching the matrix's end. For example, the matrix diagonal starting from mat[2][0], where mat is a 6 x 3 matrix, includes cells mat[2][0], mat[3][1], and mat[4][2].

 Given an m x n matrix mat of integers, sort each matrix diagonal in ascending order and return the resulting matrix.

  

 Example 1:


 Input: mat = [[3,3,1,1],[2,2,1,2],[1,1,1,2]]
 Output: [[1,1,1,1],[1,2,2,2],[1,2,3,3]]
  

 Constraints:

 m == mat.length
 n == mat[i].length
 1 <= m, n <= 100
 1 <= mat[i][j] <= 100
    Hide Hint #1
 Use a data structure to store all values of each diagonal.
    Hide Hint #2
 How to index the data structure with the id of the diagonal?
    Hide Hint #3
 All cells in the same diagonal (i,j) have the same difference so we can get the diagonal of a cell using the difference i-j.
 */

class SortTheMatrixDiagonally {
    func diagonalSort(_ mat: [[Int]]) -> [[Int]] {
        var sorted = Array(repeating: Array(repeating: 0, count: mat[0].count), count: mat.count)
        
        // Traverse columns
        var cols = [[Int]]()
        for col in 0..<mat[0].count {
            var i = 0
            var j = col
            var newArray = [Int]()
            while i < mat.count && j < mat[0].count {
                newArray.append(mat[i][j])
                i += 1
                j += 1
            }
            cols.append(newArray.sorted())
        }
        
        for row in 0..<cols.count {
            var i = 0
            var j = row
            for col in 0..<cols[row].count {
                sorted[i][j] = cols[row][col]
                i += 1
                j += 1
            }
        }
        
        // Traverse rows
        var rows = [[Int]]()
        for row in 1..<mat.count {
            var i = row
            var j = 0
            var newArray = [Int]()
            while i < mat.count && j < mat[0].count {
                newArray.append(mat[i][j])
                i += 1
                j += 1
            }
            rows.append(newArray.sorted())
        }
        
        for row in 0..<rows.count {
            var i = 1 + row
            var j = 0
            for col in 0..<rows[row].count {
                sorted[i][j] = rows[row][col]
                i += 1
                j += 1
            }
        }
        
        return sorted
    }
}
