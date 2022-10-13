//
//  GetQuestionRequest.swift
//  TrivialClean
//
//  Created by Carlos Personal on 11/10/22.
//

import Foundation
import Alamofire


class GetQuestionRequest {
    
    let endPoint = "api.php"
    let baseUrl : String
    
    init(config: Config) {
        baseUrl = config.getBaseURL()
    }
    
    func performRequest(questionRequest: QuestionRequest) -> QuestionResponse? {
        let parameters = composeUrlParams(questionRequest: questionRequest)
        var questionResponse: QuestionResponse?
        
        AF.request("\(baseUrl)/\(endPoint)",
                   method: .get,
                   parameters: parameters)
                .validate()
                .responseDecodable(of: QuestionResponse.self) { response in
                    
                    guard let _: QuestionResponse = response.value else {
                        questionResponse = nil;
                        return;
                    }
                    questionResponse = response.value
        }
        
        return questionResponse
    }
    
    private func composeUrlParams(questionRequest: QuestionRequest) -> Optional<Dictionary<String,Any>> {
        return ["amount": questionRequest.amount,
                          "category": questionRequest.category,
                          "difficulty":questionRequest.difficulty,
                          "type":questionRequest.type]
    }
}
