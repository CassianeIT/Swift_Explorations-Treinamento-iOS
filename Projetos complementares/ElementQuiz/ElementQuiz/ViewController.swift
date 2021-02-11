//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Curitiba on 10/02/21.
//

import UIKit

enum State {
    case question
    case answer
    case score
}

enum Mode {
    case flashCard
    case quiz
}

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var modeSelector: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var showAnswerButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    // Quiz-specific state
    var answerIsCorrect = false
    var correctAnswerCount = 0
    
    var mode: Mode = .flashCard {
        didSet {
            // Bux Fix
            switch mode {
            case .flashCard:
                setupFlashCards()
            case .quiz:
                setupQuiz()
            }
            
            updateUI()
        }
    }
    var state: State = .question
    
    var elementList = ["Carbon", "Gold", "Chlorine","Sodium"]
    var currentElementIndex = 0
    
    let fixedElementList =
        ["Carbon", "Gold", "Chlorine","Sodium"]
    
    // dando erro verificar pg 460
  //  var elementList: [String] = []
    
    @IBAction func switchModes(_ sender: Any) {
        if modeSelector.selectedSegmentIndex == 0 {
            mode = .flashCard
        } else {
            mode = .quiz
        }
    }
    
    // atualiza a UI
    @IBAction func showAnswer(_ sender: Any) {
        state = .answer
        
        updateUI()
    }
    
    //Atualizacao do app
    @IBAction func next(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
            if mode == .quiz {
                state = .score
                updateUI()
                return
            }
        }
    
        state = .question
        
        updateUI()
    }
    
    // atualiza a UI do app no modo ficha de estudo
    func updateFlashCardUI(elementName: String) {
        // Campo de text e teclado
        textField.isHidden = true
        textField.resignFirstResponder()
        
        //Rótulo de resposta
        if state == .answer {
            answerLabel.text = elementName
        } else {
            answerLabel.text = "?"
        }
        
        // Controle segmentado
        modeSelector.selectedSegmentIndex = 0
        
        // Botões
        showAnswerButton.isHidden = false
        nextButton.isEnabled = true
        nextButton.setTitle("Próximo elemento", for: .normal)
    }
    
    // Atualiza a UI do app no modo teste.
    func updateQuizUI(elementName: String) {
        // Campo de texto e teclado
        textField.isHidden = false
        switch state {
        case .question:
            textField.isEnabled = true
            textField.text = ""
            textField.becomeFirstResponder()
        case .answer:
            textField.isEnabled = false
            textField.resignFirstResponder()
        case .score:
            textField.isHidden = true
            textField.resignFirstResponder()
        }
            
            //Rótulo de resposta
            switch state {
            case .question:
                answerLabel.text = ""
            case .answer:
                if answerIsCorrect {
                    answerLabel.text = "Correct!"
                } else {
                    answerLabel.text = "❌ \nResposta correta:" + elementName
                }
                
            case .score:
                answerLabel.text = ""
                print("Your score is \(correctAnswerCount) out of \(elementList.count).")
            
            if state == .score {
                displayScoreAlert()
            }
            }
    
                
        // Controle Segmentado
        modeSelector.selectedSegmentIndex = 1
        
        // Botões
        showAnswerButton.isHidden = true
        if currentElementIndex == elementList.count - 1 {
            nextButton.setTitle("Show Score", for: .normal)
        } else {
            nextButton.setTitle("Next Question", for: .normal)
        }
        switch state {
        case .question:
            nextButton.isEnabled = false
        case .answer:
            nextButton.isEnabled = true
        case .score:
            nextButton.isEnabled = false
        }
    }
    
    
        
    // Atualiza a UI do app com base no seu modo e estado.
    func updateUI() {
        // Código cmpartilhado: atualização de imagem
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
        
        // As atualizações de ui de um modo específico se dividem em dois
        // métodos para faciliar a leitura
        switch mode {
        case .flashCard:
            updateFlashCardUI(elementName: elementName)
        case .quiz:
            updateQuizUI(elementName: elementName)
        }
    }
    
    // Executa após o usuário pressionar a tecla Return no teclado - tirei do parametro _ textField: UITextField
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Pega o texto do campo de texto
        let textFieldContents = textField.text!
        
        // Determina se o usuário respondeu corretamente e atualiza o estado de teste
        if textFieldContents.lowercased() ==
            elementList[currentElementIndex].lowercased () {
            answerIsCorrect = true
            correctAnswerCount += 1
        } else {
            answerIsCorrect = false
        }
        if answerIsCorrect {
            print("Correct!")
        } else {
            print("❌")
        }
        
        // O aplicativo agora deve mostrar a resposta ao usuário
        state = .answer
        
        updateUI()
        
        return true
    }
    
    // Shows an iOS alert with the user's quiz score.
    func displayScoreAlert() {
        let alert = UIAlertController(title: "Quiz Score", message: "Your score is \(correctAnswerCount) out of \(elementList.count).", preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "OK", style: .default, handler: scoreAlertDismissed(_:))
        alert.addAction(dismissAction)
        
        present(alert, animated: true, completion: nil)
    }
    
    func scoreAlertDismissed(_ action: UIAlertAction) {
        mode = .flashCard
    }
    
    // Abre uma nova sessão da ficha de estudo.
    func setupFlashCards() {
        state = .question
        currentElementIndex = 0
        
        elementList = fixedElementList
    }
    
    // Abre um novo teste.
    func setupQuiz() {
        state = .question
        currentElementIndex = 0
        answerIsCorrect = false
        correctAnswerCount = 0
        
        elementList = fixedElementList.shuffled()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mode = .flashCard
    }

}
    



