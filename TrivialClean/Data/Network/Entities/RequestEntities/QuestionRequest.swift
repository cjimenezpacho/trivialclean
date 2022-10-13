//
//  QuestionRequestEntity.swift
//  TrivialClean
//
//  Created by Carlos Personal on 11/10/22.
//

import Foundation

class QuestionRequest {
    let amount: Int
    let category: Int
    let difficulty: String
    let type: String
    
    init(amount: Int, category: Int, difficulty: String, type: String){
        self.amount = amount
        self.category = category
        self.difficulty = difficulty
        self.type = type
    }
    
}
