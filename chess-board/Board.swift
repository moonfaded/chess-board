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
    let colRange = "A"..."H"
    
    init(){
        for i in rowRange {
            board[i] = [:]
        }
    }
    
    subscript(number: Int, word: String) -> ChessMan? {
        get {
            return board[number]?[word]
        }
        set {
            guard rowRange.contains(number) else { return }
            guard colRange.contains(word) else { return }
            
            board[number]?[word] = newValue
        }
    }
}
