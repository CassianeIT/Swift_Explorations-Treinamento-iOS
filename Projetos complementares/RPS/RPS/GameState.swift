//
//  GameState.swift
//  RPS
//
//  Created by Curitiba on 09/02/21.
//

import Foundation

enum Gamestate {
    case iniciar
    case ganhar
    case perder
    case empate
    
    var status: String {
        switch self {
        case .iniciar:
            return "Pedra, Papel, Tesoura"
        case .ganhar:
            return "You Won"
        case .perder:
            return "You lost!"
        case .empate:
            return "Empate!"
        }
    }
}
