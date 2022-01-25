//
//  main.swift
//  chess-board
//
//  Created by Александр Владыко on 24.01.22.
//

//let whiteKing = ChessMan(.whiteKing)

//whiteKing.printProperties()
//whiteKing.setCoordinates(("A", 5))
//whiteKing.printProperties()
//whiteKing.kill()
//whiteKing.printProperties()

let board = ChessBoard()

board[7, "E"] = ChessMan(.whiteKing)

if let figureFromBoard = board[7, "E"] {
    figureFromBoard.printProperties()
} else {
    print("Figure not found!")
}
