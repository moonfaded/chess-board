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
    var board:[UInt8:[Character:ChessMan]] = [:]
    let rowRange = UInt8(1)...8
    let colRange = Character("A")..."H"
    var figures:[ChessMan] = []
    
    init() {
        for i in rowRange {
            board[i] = [:]
        }
    }
    
    subscript(number: UInt8, letter: Character) -> ChessMan? {
        get {
            return board[number]?[letter]
        }
        set {
            guard rowRange.contains(number) else { return }
            guard colRange.contains(letter) else { return }
            
            newValue?.setCoordinates((number, letter))
            board[number]?[letter] = newValue
        }
    }
}
