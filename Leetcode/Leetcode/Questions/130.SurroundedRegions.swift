//
//  130.SurroundedRegions.swift
//  Leetcode
//
//  Created by Sudarshan Sharma on 6/17/20.
//  Copyright © 2020 Sudarshan Sharma. All rights reserved.
//

/*
 Given a 2D board containing 'X' and 'O' (the letter O), capture all regions surrounded by 'X'.

 A region is captured by flipping all 'O's into 'X's in that surrounded region.

 Example:

 X X X X
 X O O X
 X X O X
 X O X X
 After running your function, the board should be:

 X X X X
 X X X X
 X X X X
 X O X X
 Explanation:

 Surrounded regions shouldn’t be on the border, which means that any 'O' on the border of the board are not flipped to 'X'. Any 'O' that is not on the border and it is not connected to an 'O' on the border will be flipped to 'X'. Two cells are connected if they are adjacent cells connected horizontally or vertically.

 */

class SurroundedRegions {
    func solve(_ board: inout [[Character]]) {
        let row = board.count
        guard row > 2 else { return }
        
        let column = board[0].count
        guard column > 2 else { return }
        
        for i in 0..<row {
            mark(&board, i, 0)
            mark(&board, i, column - 1)
        }
        
        for j in 0..<column {
            mark(&board, 0, j)
            mark(&board, row - 1, j)
        }
        
        for i in 0..<row {
            for j in 0..<column {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                } else if board[i][j] == "*" {
                    board[i][j] = "O"
                }
            }
        }
    }
    
    func mark(_ board: inout [[Character]], _ i: Int, _ j: Int) {
        guard i >= 0 && i < board.count else { return }
        guard j >= 0 && j < board[i].count else { return }
        guard board[i][j] == "O" else { return }
        
        board[i][j] = "*"
        
        mark(&board, i - 1, j)
        mark(&board, i + 1, j)
        mark(&board, i, j - 1)
        mark(&board, i, j + 1)
    }
}
