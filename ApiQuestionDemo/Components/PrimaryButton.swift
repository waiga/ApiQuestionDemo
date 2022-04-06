//
//  PrimaryButton.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color("AccentColor")
    
    var body: some View {
        Text(text)
            .frame(width: 250, height: 25, alignment: .center)
            .foregroundColor(.white)
            .padding()
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Welcome")
    }
}
