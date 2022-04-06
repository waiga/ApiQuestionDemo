//
//  QuestionView.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack(spacing: 40) {
            HStack {
                Text("질문지")
                    .lilacTitle()
                Spacer()
                Text(" \(triviaManager.index + 1) / \(triviaManager.length) ")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: triviaManager.progress)
            //Spacer()
            VStack(alignment: .leading, spacing: 10) {
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.black)
                ForEach(triviaManager.answerChoices, id: \.id) { answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                }
//                AnswerRow(answer: Answer(text: "true", isCorrect: true))
//                    .environmentObject(triviaManager)
//                AnswerRow(answer: Answer(text: "false", isCorrect: false))
//                    .environmentObject(triviaManager)
            }
            //Spacer()
            Button {
                triviaManager.goToNextQuestion()
            } label: {
                PrimaryButton(text: "다음 문항", background: triviaManager.answerSelected ? Color("AccentColor") : Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
            }
            .disabled(!triviaManager.answerSelected)
            
            //Spacer()
        }.padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarHidden(true)
    }
    
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            QuestionView()
                .environmentObject(TriviaManager())
            
        }
    }
}
