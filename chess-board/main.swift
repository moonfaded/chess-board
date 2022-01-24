//
//  main.swift
//  chess-board
//
//  Created by Александр Владыко on 24.01.22.
//

import Foundation

let whiteKing = ChessMan(color: .white, type: .king)
let board = ChessBoard()

board[8, "A"] = whiteKing
print(board[8, "A"]?.colorAndType ?? "No chessman here!")
board[8, "A"] = nil
print(board[8, "A"] ?? "No chessman here!")
