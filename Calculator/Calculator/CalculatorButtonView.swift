//
//  CalculatorButtonView.swift
//  Calculator
//
//  Created by Nikolay Malev on 6.08.26.
//

import SwiftUI

enum Operators {
    case plus
    case minus
    case equals
    case reset
}

struct CalculatorButtonView: View {
    @Binding var input: String
    var value: String
    var background: Color = .gray
    var isOperator: Bool = false
    
    var body: some View {
        Button(action: {
            let inputInt = Int(input + self.value)!
            input = "\(inputInt)"
        }, label: {
            Text(value)
        })
        .frame(width: 70, height: 70, alignment: .center)
        .foregroundStyle(Color(.white))
        .background(background)
        .font(.largeTitle)
        .cornerRadius(20)
    }
}
