//
//  Extensions.swift
//  ApiQuestionDemo
//
//  Created by 김미향 on 2022/04/04.
//

import Foundation
import SwiftUI

extension Text {
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(Color("AccentColor"))
    }
}
