//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Farid on 2/25/20.
//  Copyright © 2020 Farid Massuh. All rights reserved.

import UIKit



class CreationViewController: UIViewController {
    
    var flashcardsController: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    
    @IBOutlet weak var myQuestionField: UITextField!
    @IBOutlet weak var myAnswerField: UITextField!
    
    
    
    
    @IBAction func didTapOnCancel(_ sender: Any) {
        
        dismiss(animated: true)
        
    }
    
    
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = myQuestionField.text
        let answerText = myAnswerField.text
        
        
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        
        dismiss(animated: true)
    }
    
    
    }
    


