//
//  ViewController.swift
//  RPS
//
//  Created by Curitiba on 09/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var signLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var pedraButton: UIButton!
    @IBOutlet weak var papelButton: UIButton!
    @IBOutlet weak var tesouraButton: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    
    @IBAction func pedraAction(_ sender: UIButton) {
        play(userSign: .pedra)
    }
    @IBAction func papelAction(_ sender: UIButton) {
        play(userSign: .papel)
    }
    @IBAction func tesouraAction(_ sender: UIButton) {
        play(userSign: .tesoura)
    }
    @IBAction func playAgainAction(_ sender: UIButton) {
        updateUI(state: .iniciar)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        updateUI(state: .iniciar)
    }
    
    func updateUI(state: Gamestate) {
        statusLabel.text = state.status
        
        switch state {
        case .iniciar:
            view.backgroundColor = .gray
            signLabel.text = "🤖"
            playAgain.isHidden = true
            
            pedraButton.isHidden = false
            papelButton.isHidden = false
            tesouraButton.isHidden = false
            
            pedraButton.isEnabled = true
            papelButton.isEnabled = true
            tesouraButton.isEnabled = true
            
        case .ganhar:
            view.backgroundColor = .green
            _ = UIColor(named: "#79FFBE")
            case .perder:
            view.backgroundColor = .green
            
        case .empate:
            view.backgroundColor = .green
            
        }
    }
    
    func play(userSign: Sign) {
        let computerSign = randomSign()
        let gameState = userSign.gameState(against: computerSign)
        updateUI(state: gameState)
        
        signLabel.text = computerSign.emoji
        
        pedraButton.isEnabled = false
        papelButton.isEnabled = false
        tesouraButton.isEnabled = false
        
        pedraButton.isHidden = true
        papelButton.isHidden = true
        tesouraButton.isHidden = true

        
        switch userSign {
        case .pedra:
            pedraButton.isHidden = false
        case .papel:
            papelButton.isHidden = false
        case .tesoura:
            tesouraButton.isHidden = false
        }
        
        playAgain.isHidden = false
    }
}

