//
//  ViewController.swift
//  Guess de Flag1
//
//  Created by Curitiba on 19/01/21.
//

import UIKit

class ViewController: UIViewController {
    
            //MARK: - Outlets
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var quadrado: UILabel!
    
 // MARK: - Propriedade da classe
    
    var paises = [String] ()
    var score = 0
    var correctAnswer = 0
    var askedQuestions = 0
    
    // MARK: - Ações do clique nas bandeiras
    
    @IBAction func buttonTouch(_ flag: UIButton) {
        var title: String
        
        if flag.tag == correctAnswer {
         title = "Resposta \(askedQuestions) de 10:\n\nCorreto!"
            score += 1
        } else {
            title =
    """
             Resposta \(askedQuestions) de 10:
             Errado! Essa bandeira do país:\(paises[flag.tag].uppercased())
             """
        }
        
        if askedQuestions < 10 {
            let alertController = UIAlertController(title: title, message: "uau",preferredStyle: .alert)
            
            alertController.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
            //addAction adiciona uma acao, que é o UIAlertAction

            present(alertController, animated: true)
        } else {
            let finalAlertController = UIAlertController(title: "Fim de jogo!\n", message: score > 6 ? "Seu score total foi de: \(score).\nParabés!" : "Seu score total foi de: \(score). \nVocê pode melhorar!", preferredStyle: .alert)

                  finalAlertController.addAction(UIAlertAction(title: "Iniciar novo jogo", style: .default, handler: startNewGame))

                  present(finalAlertController, animated: true)

                }

              }
            
// MARK: - Metodos
    
    //exibe as bandeiras de forma randomica
    func askQuestion(action: UIAlertAction! = nil){
        paises.shuffle()
        correctAnswer = Int.random(in: 0...2)
        question.text = "Clique na bandeira do país: \(paises[correctAnswer])"
        // random para nao repetir a correta, se eu n colocar apenas a primeira bandeira daria correta

        
        button1.setImage(UIImage(named: paises[0]), for: .normal)
        button2.setImage(UIImage(named: paises[1]), for: .normal)
        button3.setImage(UIImage(named: paises[2]), for: .normal)
        
        quadrado.text = String(score)
        
        askedQuestions += 1
          
        }
    

    // Inicia um novo jogo

    func startNewGame(action: UIAlertAction) {
      score = 0
      askedQuestions = 0
      askQuestion()

    }
    
// Mark: - Execução

       override func viewDidLoad() {
           super.viewDidLoad()
    // Do any additional setup after loading the view.
        
        paises = ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        askQuestion()
       }
}
        
// fazer randon só no console-> let randomPaises = Int.random(in: 0..<paises.count)
        

//        label1.attributedText(paises[randomPaises])
        
        //for paises in paises {
            //print(paises.randomElement())
            

