//
//  ContentView.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Aptitude Test")
                    .lilacTitle()
                Text("검사 시작하기!")
                    .foregroundColor(Color("AccentColor"))
            }
            PrimaryButton(text: "시작하기")
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .edgesIgnoringSafeArea(.all)
        .background(Color(red: 0.59, green: 0.52, blue: 0.59, opacity: 0.15))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
