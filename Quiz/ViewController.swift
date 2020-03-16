//
//  ViewController.swift
//  Quiz
//
//  Created by Luca Stanger on 02.03.20.
//  Copyright © 2020 Luca Stanger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var currentQuestionLabel : UILabel!
    @IBOutlet var nextQuestionLabel : UILabel!
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
//        questionLabel.text = question
        nextQuestionLabel.text = question
        answerLabel.text = "???"
        
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_ sender:UIButton){
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        questionLabel.text = questions[currentQuestionIndex]
        nextQuestionLabel.text = questions[currentQuestionIndex]
    }
    
    func animateLabelTransitions() {
        
        UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: {
            self.currentQuestionLabel.alpha = 0
            self.nextQuestionLabel.alpha = 1},
           completion: {_ in
            swap(&self.currentQuestionLabel,
                 &self.nextQuestionLabel)})
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set the label's initial alpha
//        questionLabel.alpha = 0
        nextQuestionLabel.alpha = 0
    }
}

