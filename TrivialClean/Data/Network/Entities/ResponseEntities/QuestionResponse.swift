//
//  QuestionResponseEntity.swift
//  TrivialClean
//
//  Created by Carlos Personal on 12/10/22.
//

import Foundation

struct QuestionResponse: Decodable {
    let response_code: Int
    let results: Array<QuestionResponseResults>
}

struct QuestionResponseResults: Decodable {
    let category: String
    let type: String
    let difficulty: String
    let question: String
    let correct_answer: String
    let incorrect_answers: Array<String>
}

