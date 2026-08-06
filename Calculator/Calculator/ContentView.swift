//
//  ContentView.swift
//  Calculator
//
//  Created by Nikolay Malev on 6.08.26.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = "0"
    
    var body: some View {
        VStack {
            Text(input)
                .foregroundStyle(.white)
                .font(.largeTitle)
            Grid {
                GridRow {
                    CalculatorButtonView(input: $input, value: "1")
                    CalculatorButtonView(input:  $input, value: "2")
                    CalculatorButtonView(input: $input,value: "3")
                    CalculatorButtonView(input: $input,value: "+", background: .orange,
                        isOperator: true)
                }
                GridRow {
                    CalculatorButtonView(input: $input,value: "4")
                    CalculatorButtonView(input: $input,value: "5")
                    CalculatorButtonView(input: $input,value: "6")
                    CalculatorButtonView(input: $input,value: "/", background: .orange,
                        isOperator: true)
                }
                GridRow {
                    CalculatorButtonView(input: $input,value: "7")
                    CalculatorButtonView(input: $input,value: "8")
                    CalculatorButtonView(input: $input,value: "9")
                    CalculatorButtonView(input: $input,value: "*", background: .orange,
                        isOperator: true
                    )
                }
                GridRow {
                    CalculatorButtonView(input: $input, value: "0")
                        .gridCellColumns(2)
                        .frame(width: 147, height: 70, alignment: .center)
                        .background(.gray)
                        .cornerRadius(20)
                    CalculatorButtonView(input: $input, value: "C", background: .blue,
                        isOperator: true)
                    CalculatorButtonView(input: $input, value: "=", background: .orange,
                        isOperator: true)
                }
            }
        }
        .padding()
        .background(.black)
    }
}

#Preview {
    ContentView()
}
