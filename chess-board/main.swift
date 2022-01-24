//
//  main.swift
//  chess-board
//
//  Created by Александр Владыко on 24.01.22.
//

import Foundation

let whiteKing = ChessMan(color: .white, type: .king, coordinates: ("A",5), symbol: "♚")
let board = ChessBoard()

board[8]! = ["A":whiteKing]


for i in 1...8 {
    print(i, board[i]!)
}
