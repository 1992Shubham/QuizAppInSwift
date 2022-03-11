//
//  QuestionViewModel.swift
//  QuizApp
//
//  Created by SHUBHAM AGARWAL on 04/03/22.
//

import Foundation

class QuestionViewModel {
    
    var questionData:DataModel?
    private let sourcesURL = URL(string: "https://quiz-68112-default-rtdb.firebaseio.com/quiz.json")!

    func apiToGetQuestionData(completion : @escaping () -> ()) {
        
        URLSession.shared.dataTask(with: sourcesURL) { [weak self] (data, urlResponse, error) in
            if let data = data {
                
                let jsonDecoder = JSONDecoder()
                
                let empData = try! jsonDecoder.decode(DataModel.self, from: data)
                self?.questionData = empData
                print(empData)
                completion()
            }
        }.resume()
    }
}

