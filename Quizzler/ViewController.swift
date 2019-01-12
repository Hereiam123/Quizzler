//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion = QuestionBank()
    
    var pickedAnswer: Bool = false
    var questionNumber: Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestion.list[0]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if(sender.tag == 1){
            pickedAnswer = true
        }
        else{
            pickedAnswer = false
        }
        checkAnswer()
        nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        questionNumber += 1
        if(questionNumber<allQuestion.list.count){
            questionLabel.text = allQuestion.list[questionNumber].questionText
        }
        else{
            print("End of quiz")
            questionNumber = 0
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestion.list[questionNumber].answer
        
        if(correctAnswer == pickedAnswer){
            print("Correct")
        }
        else{
            print("Wrong")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
