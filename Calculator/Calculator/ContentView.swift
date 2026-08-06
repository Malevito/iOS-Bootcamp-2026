//
//  ContentView.swift
//  Calculator
//
//  Created by Nikolay Malev on 6.08.26.
//

import SwiftUI

struct ContentView: View {
    @State var total = "0"
    
    var body: some View {
        VStack {
            TotalText(value: total)
            ButtonGrid(total: $total)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
