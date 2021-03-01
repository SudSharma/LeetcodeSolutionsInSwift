//
//  1337.TheKWeakestRowsInAMatrix.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/15/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 Given a m * n matrix mat of ones (representing soldiers) and zeros (representing civilians), return the indexes of the k weakest rows in the matrix ordered from the weakest to the strongest.

 A row i is weaker than row j, if the number of soldiers in row i is less than the number of soldiers in row j, or they have the same number of soldiers but i is less than j. Soldiers are always stand in the frontier of a row, that is, always ones may appear first and then zeros.

  

 Example 1:

 Input: mat =
 [[1,1,0,0,0],
  [1,1,1,1,0],
  [1,0,0,0,0],
  [1,1,0,0,0],
  [1,1,1,1,1]],
 k = 3
 Output: [2,0,3]
 Explanation:
 The number of soldiers for each row is:
 row 0 -> 2
 row 1 -> 4
 row 2 -> 1
 row 3 -> 2
 row 4 -> 5
 Rows ordered from the weakest to the strongest are [2,0,3,1,4]
 Example 2:

 Input: mat =
 [[1,0,0,0],
  [1,1,1,1],
  [1,0,0,0],
  [1,0,0,0]],
 k = 2
 Output: [0,2]
 Explanation:
 The number of soldiers for each row is:
 row 0 -> 1
 row 1 -> 4
 row 2 -> 1
 row 3 -> 1
 Rows ordered from the weakest to the strongest are [0,2,3,1]
  

 Constraints:

 m == mat.length
 n == mat[i].length
 2 <= n, m <= 100
 1 <= k <= m
 matrix[i][j] is either 0 or 1.
 */

class TheKWeakestRowsInAMatrix {
    func kWeakestRows(_ mat: [[Int]], _ k: Int) -> [Int] {
        var kWeakestRows = [Int]()
        var index = 0
        var mapping = [Int: Int]()
        for value in mat {
            var count = 0
            for num in value {
                if num == 1 {
                    count += 1
                }
                else {
                    break
                }
            }
            mapping[index] = count
            index += 1
        }
        
        var temp = 0
        for (key, _) in mapping.sorted(by: { $0.value < $1.value || ($0.value == $1.value && $0.key < $1.key) }) {
            if temp == k {
                break
            }
            kWeakestRows.append(key)
            temp += 1
        }
        
        return kWeakestRows
    }
}
