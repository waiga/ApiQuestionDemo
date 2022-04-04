//
//  Answer.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/05.
//

import Foundation

struct Answer: Identifiable {
    var id = UUID() //Random Id unique id
    var text: AttributedString
    var isCorrect: Bool
    
}
