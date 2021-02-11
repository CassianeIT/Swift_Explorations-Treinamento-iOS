//
//  ViewController.swift
//  MemeMaker
//
//  Created by Curitiba on 10/02/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragButtomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func segmentedControlChanged(_ sender: Any) {
        updateLegendas()
    }
    
    let topChoices = [
        CaptionOption(emoji: "🍺", legenda: "Sextouuu"),
        CaptionOption(emoji: "💣", legenda: "Aqui é tiro e bomba!"),
        CaptionOption(emoji: "😍", legenda: "Sabe o que eu amo?")
    ]
    
    let bottomChoices = [
        CaptionOption(emoji: "😎" , legenda: "Toperson"),
        CaptionOption(emoji: "🦖", legenda: "Noffa Jerfferson"),
        CaptionOption(emoji: "🐕", legenda: "Cachorrinho fdp..")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Configura segmento superior
        topSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }
        topSegmentedControl.selectedSegmentIndex = 0
        
        //Configura o segmento inferior
        bottomSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }
        bottomSegmentedControl.selectedSegmentIndex = 0
        
        // Atualiza as frases na UI
        updateLegendas()
        
        
    }
        func updateLegendas() {
            let topIndex = topSegmentedControl.selectedSegmentIndex
            topCaptionLabel.text = topChoices[topIndex].legenda
            
            let bottomIndex = bottomSegmentedControl.selectedSegmentIndex
            bottomCaptionLabel.text = bottomChoices[bottomIndex].legenda
        }
    }
    




