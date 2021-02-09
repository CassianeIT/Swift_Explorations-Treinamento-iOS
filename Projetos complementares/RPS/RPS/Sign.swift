//
//  Sign.swift
//  RPS
//
//  Created by Curitiba on 09/02/21.
//

import Foundation

func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    if sign == 0 {
        return .pedra
    } else if sign == 1 {
        return .papel
    } else {
        return .tesoura
    }
}

enum Sign {
    case pedra
    case papel
    case tesoura

var emoji: String {
    switch self {
    case .pedra:
        return "👊🏼"
    case .papel:
        return "✋🏼"
    case .tesoura:
        return "✌🏼"
    }
}

    func gameState(against opponentSign: Sign) -> Gamestate {
        if self == opponentSign {
            return .empate
        }
        switch self {
        case .pedra:
            if opponentSign == .tesoura {
                return .ganhar
            }
        case .papel:
            if opponentSign == .pedra
            {
                return .ganhar
            }
        case .tesoura:
            if opponentSign == .papel {
                return .ganhar
            }
        }
        return .perder
    }
}

