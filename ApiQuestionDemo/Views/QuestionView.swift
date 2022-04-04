//
//  QuestionView.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("Questionnaire")
                    .lilacTitle()
                Spacer()
                Text(" 1 / 10 ")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: 40)
            VStack(alignment: .leading, spacing: 20) {
                Text("What is the largest city and commercial capital of Sri Lanka?")
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.black)
                
                AnswerRow(answer: Answer(text: "false", isCorrect: true))
                AnswerRow(answer: Answer(text: "true", isCorrect: false))
            }
            
            PrimaryButton(text: "다음 문항")
            
            
            
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}
