//
//  OpenTriviaAPIDataSourceImp.swift
//  TrivialClean
//
//  Created by Carlos Personal on 11/10/22.
//

import Foundation

class OpenTriviaAPIDataSourceImp: OpenTriviaAPIDataSource {
    let getQuestionRequest: GetQuestionRequest
    
    init(getQuestionRequest: GetQuestionRequest) {
        self.getQuestionRequest = getQuestionRequest
    }
    
    func getQuestion(questionConfig: QuestionConfig) {
        let questionRequest: QuestionRequest = QuestionRequest(amount: questionConfig.amount, category: questionConfig.category, difficulty: questionConfig.difficulty, type: questionConfig.type)
        
        getQuestionRequest.performRequest(questionRequest: questionRequest)
    }
}
