//
//  UserModel.swift
//  MVVMDemo
//
//  Created by SHUBHAM AGARWAL on 29/08/21.
//

import Foundation

struct DataModel: Codable {
    var data:QuestionModel?
}

struct QuestionModel: Codable {
    var questions: [Questions]?
}
    
struct Questions: Codable {
    var correct_answer: String?
    var option_1: String?
    var option_2: String?
    var option_3: String?
    var option_4: String?
    var question: String?
}
