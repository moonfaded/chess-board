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
let whiteKing = ChessMan(.whiteKing)

board[7, "E"] = whiteKing

if let figureFromBoard = board[7, "E"] {
    figureFromBoard.printProperties()
} else {
    print("Figure not found!")
}

if let figureFromBoard = board[7, "E"] {
    figureFromBoard.printProperties()
    figureFromBoard.capture()
} else {
    print("Figure not found!")
}

whiteKing.printProperties()
