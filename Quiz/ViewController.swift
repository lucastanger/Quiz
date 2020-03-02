//
//  ViewController.swift
//  Quiz
//
//  Created by Luca Stanger on 02.03.20.
//  Copyright © 2020 Luca Stanger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel : UILabel!
    @IBOutlet var answerLabel : UILabel!
    
    let questions: [String] = [
        "What is 6x7?",
        "How much wood would a woodchuck chuck?",
        "What is brown and sticky"
    ]
    
    let answers: [String] = [
        "42. The Answer to life & universe & everything",
        "As much as he could",
        "A stick"
    ]
    
    var currentQuestionIndex: Int = 0


    @IBAction func showNextQuestion(_ sender: UIButton){
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count {
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

