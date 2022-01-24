//
//  ChessMan.swift
//  chess-board
//
//  Created by Александр Владыко on 24.01.22.
//

class ChessMan {
    enum Color: String {
        case black = "Black"
        case white = "White"
    }
    enum FigureType: String {
        case pawn = "Pawn"
        case bishop = "Bishop"
        case knight = "Kinght"
        case rook = "Rook"
        case queen = "Queen"
        case king = "King"
    }
    
    let color: Color
    let type: FigureType
    var coordinates: (Character, UInt)?
    var symbol: Character {
        switch (self.color, self.type) {
        case (.white, .pawn): return "♚"
        case (.white, .bishop): return "♚"
        case (.white, .knight): return "♚"
        case (.white, .rook): return "♚"
        case (.white, .queen): return "♚"
        case (.white, .king): return "♚"
            
        case (.black, .pawn): return "♚"
        case (.black, .bishop): return "♚"
        case (.black, .knight): return "♚"
        case (.black, .rook): return "♚"
        case (.black, .queen): return "♚"
        case (.black, .king): return "♚"
        }
    }
    
    var colorAndType: String {
        "Color = \(color), Type = \(type), Symbol = \(symbol)"
    }
    
    init(color: Color, type: FigureType) {
        self.color = color
        self.type = type
        coordinates = nil
    }
    init(color: Color, type: FigureType, coordinates: (Character, UInt), symbol: Character) {
        self.color = color
        self.type = type
        self.coordinates = coordinates
    }
    
    func setCoordinates(coordinates: (Character, UInt)) {
        self.coordinates = coordinates
    }
    func kill() {
        coordinates = nil
    }
}
