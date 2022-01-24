//
//  Board.swift
//  chess-board
//
//  Created by Александр Владыко on 24.01.22.
//

// 1 _ _ _ _ _ _ _ _
// 2 _ _ _ _ _ _ _ _
// 3 _ _ _ _ _ _ _ _
// 4 _ _ _ _ _ _ _ _
// 5 _ _ _ _ _ _ _ _
// 6 _ _ _ _ _ _ _ _
// 7 _ _ _ _ _ _ _ _
// 8 _ _ _ _ _ _ _ _
//   A B C D E F G H

class ChessBoard {
    var board:[Int:[String:ChessMan]] = [:]
    let rowRange = 1...8
    let colRange = UInt32("A")...UInt32("H")
    
    init(){
        for i in rowRange {
            board[i] = [:]
        }
    }
    
    subscript(number: Int) -> [String:ChessMan]? {
        get {
            return board[number]
        }
        set {
            board[number] = newValue
        }
    }
}
