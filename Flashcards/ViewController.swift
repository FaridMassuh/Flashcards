//
//  ViewController.swift
//  Flashcards
//
//  Created by Farid on 2/15/20.
//  Copyright © 2020 Farid Massuh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //VARIABLES
    @IBOutlet weak var cardAnswer: UILabel!
    @IBOutlet weak var cardQuestion: UILabel!
    @IBOutlet weak var card: UIView!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var ten: UIButton!
    @IBOutlet weak var twfive: UIButton!
    
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?){
        
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
        creationController.flashcardsController = self
        
    }
    
    
    // VIEW LOADS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // carBox & cardAnswer & cardQuestion corners
        card.layer.cornerRadius = 40.0
        cardAnswer.layer.cornerRadius = 40.0
        cardQuestion.layer.cornerRadius = 40.0
        five.layer.cornerRadius = 20.0
        ten.layer.cornerRadius = 20.0
        twfive.layer.cornerRadius = 20.0
        
        
        // unsure what clips to bound mean
        cardAnswer.clipsToBounds = true
        cardQuestion.clipsToBounds = true
        
        
        
        // carBox shadow codes
        card.layer.shadowRadius = 10.0
        card.layer.shadowOpacity = 0.2
        
        //BORDERS
        five.layer.borderWidth = 3.0
        ten.layer.borderWidth = 3.0
        twfive.layer.borderWidth = 3.0
        
        //BORDER COLORS
        five.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        ten.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        twfive.layer.borderColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        
        
    }
    
    
    
   // CARD FLIPS TO ANSWER OR QUESTION
      @IBAction func cardClicked(_ sender: Any) {
          
          if(cardQuestion.isHidden){
              cardQuestion.isHidden = false
              cardAnswer.isHidden = true
          }
          else{
              cardQuestion.isHidden = true
              cardAnswer.isHidden = false
          }
          
        
      }
    
    func updateFlashcard(question: String, answer: String) {
        dismiss(animated: true)
    }
    
    
    
    // BUTTON CLICKED, BTN 25
    @IBAction func twfiveClicked(_ sender: Any) {
        if(cardQuestion.isHidden){
            cardQuestion.isHidden = false
            cardAnswer.isHidden = true
        }
        else{
            cardQuestion.isHidden = true
            cardAnswer.isHidden = false
        }
    }
    
    // BUTTON CLICKED, BTN 10
    @IBAction func tenClicked(_ sender: Any) {
        if cardQuestion.isHidden {
            cardQuestion.isHidden = false
            cardAnswer.isHidden = true
        }
        else{
            cardQuestion.isHidden = false
            cardAnswer.isHidden = true
        }
        ten.isHidden = true

    }
    
    // BUTTON CLICKED, BTN 5
    @IBAction func fiveClicked(_ sender: Any) {
        if cardQuestion.isHidden {
            cardQuestion.isHidden = false
            cardAnswer.isHidden = true
        }
        else{
            cardQuestion.isHidden = false
            cardAnswer.isHidden = true
        }
        five.isHidden = true
    }
    
    
    
    
    }
    
    

