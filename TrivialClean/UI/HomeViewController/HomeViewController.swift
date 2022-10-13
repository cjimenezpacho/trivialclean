//
//  ViewController.swift
//  TrivialClean
//
//  Created by Carlos Personal on 11/10/22.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let getQuestionRequest: GetQuestionRequest = GetQuestionRequest(config: ConfigImp())
        let openTriviaAPIDataSource: OpenTriviaAPIDataSource = OpenTriviaAPIDataSourceImp(getQuestionRequest: getQuestionRequest)
        
        let questionConfig: QuestionConfig = QuestionConfig(amount: 1, category: 11, difficulty: "easy", type: "boolean")
        openTriviaAPIDataSource.getQuestion(questionConfig: questionConfig)
    }


}

