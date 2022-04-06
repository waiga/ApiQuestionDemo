//
//  ProgressBar.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/04.
//

import SwiftUI
var calculator: CGFloat = 175

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(Color(hue: 1.0, saturation: 0.0, brightness: 0.564, opacity: 0.327))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    
    static var previews: some View {
        ProgressBar(progress: 175)
    }
}
