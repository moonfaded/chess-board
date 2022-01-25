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
    
    init() {
        for i in rowRange {
            board[i] = [:]
        }
    }
    
    subscript(number: UInt8, letter: Character) -> ChessMan? {
        get {
            guard rowRange.contains(number) else {
                print("Number index of board out of bound!")
                return nil
            }
            guard colRange.contains(letter) else {
                print("Letter index of board out of bounds!")
                return nil
            }
            return board[number]![letter]
        }
        set {
            guard rowRange.contains(number) else { return }
            guard colRange.contains(letter) else { return }
            guard let chessMan = newValue else { return }
            
            chessMan.setCoordinates((number, letter))
            board[number]![letter] = chessMan
        }
    }
}
