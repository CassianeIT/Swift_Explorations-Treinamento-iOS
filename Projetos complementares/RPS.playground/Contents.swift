import Foundation

// Código do arquivo GameState
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

// Código do arquivo Sign
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
    
    
    func game(player: Sign, computer: Sign ) -> Gamestate {
        if player == .pedra && computer == .papel {
            return Gamestate.perder
        } else if player == .pedra && computer == .tesoura {
            return Gamestate.ganhar
        } else if player == .tesoura && computer == .pedra {
            return Gamestate.perder
        } else if player == .papel && computer == .pedra {
            return Gamestate.ganhar
        } else if player == .tesoura && computer == .papel {
            return Gamestate.ganhar
            
        }
        return Gamestate.iniciar
        
    }
}

let computerSign = randomSign()
let player = Sign.papel

let gameState = player.game(player: .tesoura, computer: .pedra)

