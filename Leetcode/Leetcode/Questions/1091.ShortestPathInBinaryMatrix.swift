//
//  1091.ShortestPathInBinaryMatrix.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 2/13/21.
//  Copyright © 2021 Sudarshan Sharma. All rights reserved.
//

/*
 In an N by N square grid, each cell is either empty (0) or blocked (1).

 A clear path from top-left to bottom-right has length k if and only if it is composed of cells C_1, C_2, ..., C_k such that:

 Adjacent cells C_i and C_{i+1} are connected 8-directionally (ie., they are different and share an edge or corner)
 C_1 is at location (0, 0) (ie. has value grid[0][0])
 C_k is at location (N-1, N-1) (ie. has value grid[N-1][N-1])
 If C_i is located at (r, c), then grid[r][c] is empty (ie. grid[r][c] == 0).
 Return the length of the shortest such clear path from top-left to bottom-right.  If such a path does not exist, return -1.

  

 Example 1:

 Input: [[0,1],[1,0]]


 Output: 2

 Example 2:

 Input: [[0,0,0],[1,1,0],[1,1,0]]


 Output: 4

  

 Note:

 1 <= grid.length == grid[0].length <= 100
 grid[r][c] is 0 or 1
 
 
 Hint #1
 Do a breadth first search to find the shortest path.
 */

class QueueNode {
    var distance: Int
    let x: Int
    let y: Int
    
    init(x: Int, y: Int, distance: Int = 1) {
        self.x = x
        self.y = y
        self.distance = distance
    }
}

class ShortestPathInBinaryMatrix {
    func shortestPathBinaryMatrix(_ grid: [[Int]]) -> Int {
        if grid[0][0] != 0 || grid[grid.count - 1][grid[0].count - 1] != 0 {
            return -1
        }
        
        func isValid(row: Int, col: Int) -> Bool {
            return row >= 0 && col >= 0 && row < grid.count && col < grid[0].count && grid[row][col] == 0
        }
        
        var visited = Array(repeating: Array(repeating: false, count: grid[0].count), count: grid.count)
        visited[0][0] = true
        var queue = [QueueNode(x: 0, y: 0)]
        while !queue.isEmpty {
            let current = queue.removeFirst()
            if current.x == grid.count - 1 && current.y == grid[0].count - 1 {
                return current.distance
            }
            
            let row = current.x
            let col = current.y
            if isValid(row: row + 1, col: col) && !visited[row + 1][col] {
                visited[row + 1][col] = true
                queue.append(QueueNode(x: row + 1, y: col, distance: current.distance + 1))
            }
            if isValid(row: row - 1, col: col) && !visited[row - 1][col] {
                visited[row - 1][col] = true
                queue.append(QueueNode(x: row - 1, y: col, distance: current.distance + 1))
            }
            if isValid(row: row, col: col + 1) && !visited[row][col + 1] {
                visited[row][col + 1] = true
                queue.append(QueueNode(x: row, y: col + 1, distance: current.distance + 1))
            }
            if isValid(row: row, col: col - 1) && !visited[row][col - 1] {
                visited[row][col - 1] = true
                queue.append(QueueNode(x: row, y: col - 1, distance: current.distance + 1))
            }
            if isValid(row: row - 1, col: col - 1) && !visited[row - 1][col - 1] {
                visited[row - 1][col - 1] = true
                queue.append(QueueNode(x: row - 1, y: col - 1, distance: current.distance + 1))
            }
            if isValid(row: row + 1, col: col - 1) && !visited[row + 1][col - 1] {
                visited[row + 1][col - 1] = true
                queue.append(QueueNode(x: row + 1, y: col - 1, distance: current.distance + 1))
            }
            if isValid(row: row - 1, col: col + 1) && !visited[row - 1][col + 1] {
                visited[row - 1][col + 1] = true
                queue.append(QueueNode(x: row - 1, y: col + 1, distance: current.distance + 1))
            }
            if isValid(row: row + 1, col: col + 1) && !visited[row + 1][col + 1] {
                visited[row + 1][col + 1] = true
                queue.append(QueueNode(x: row + 1, y: col + 1, distance: current.distance + 1))
            }
        }
        
        return -1
    }
}
