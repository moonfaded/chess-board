//
//  ChessMan.swift
//  chess-board
//
//  Created by Александр Владыко on 24.01.22.
//

class ChessMan {
    let figure: Figure
    var coordinates: (number: UInt8, letter: Character)?
    
    init(_ figure: Figure, coordinates: (UInt8, Character)) {
        self.figure = figure
        self.coordinates = coordinates
    }
    init(_ figure: Figure) {
        self.figure = figure
    }
    
    func printProperties() -> Void {
        print("\nFigure \(figure.getProperties())")
        if let xy = coordinates {
            print("Coordinates: \(xy)")
        } else {
            print("Coordinates: nil")
        }
    }
    
    func setCoordinates(_ coordinates: (UInt8, Character)) {
        self.coordinates = coordinates
    }
    func kill() {
        coordinates = nil
    }
}

enum Figure {
    case blackPawn, blackBishop, blackKnight, blackRook, blackQueen, blackKing,
         whitePawn, whiteBishop, whiteKnight, whiteRook, whiteQueen, whiteKing
    
    func getProperties() -> String {
        return "Color: \(color), Type: \(type), Symbol: \(symbol)"
    }
    
    var color: Color {
        switch self {
        case .blackPawn: return .black
        case .blackBishop: return .black
        case .blackKnight: return .black
        case .blackRook: return .black
        case .blackQueen: return .black
        case .blackKing: return .black
        case .whitePawn: return .white
        case .whiteBishop: return .white
        case .whiteKnight: return .white
        case .whiteRook: return .white
        case .whiteQueen: return .white
        case .whiteKing: return .white
        }
    }
    
    var type: FigureType {
        switch self {
        case .blackPawn: return .pawn
        case .blackBishop: return .bishop
        case .blackKnight: return .knight
        case .blackRook: return .rook
        case .blackQueen: return .queen
        case .blackKing: return .king
        case .whitePawn: return .pawn
        case .whiteBishop: return .bishop
        case .whiteKnight: return .knight
        case .whiteRook: return .rook
        case .whiteQueen: return .queen
        case .whiteKing: return .king
        }
    }
    
    var symbol: Character {
        switch self {
        case .blackPawn: return "♟︎"
        case .blackBishop: return "♝"
        case .blackKnight: return "♞"
        case .blackRook: return "♜"
        case .blackQueen: return "♛"
        case .blackKing: return "♚"
        case .whitePawn: return "♙"
        case .whiteBishop: return "♗"
        case .whiteKnight: return "♘"
        case .whiteRook: return "♖"
        case .whiteQueen: return "♕"
        case .whiteKing: return "♔"
        }
    }

    enum Color: String {
        case black, white
    }
    enum FigureType: String {
        case pawn, bishop, knight, rook, queen, king
    }
}
