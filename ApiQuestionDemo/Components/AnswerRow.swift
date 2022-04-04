//
//  AnswerRow.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/05.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected = false
    
    var green = Color(red: 0.51, green: 0.98, blue: 0.72)
    //Color(hue: 0.637, saturation: 0.711, brightness: 0.511)
    var red = Color(red: 0.81, green: 0.994, blue: 0.2)
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "circle.fill")
                .font(.caption)
            Text(answer.text)
                .bold()
            if isSelected {
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? green : red)
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(isSelected ? Color("AccentColor") : .gray)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: isSelected ? (answer.isCorrect ? green : red) : .gray, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
           isSelected = true
        }
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Test", isCorrect: false))
    }
}
