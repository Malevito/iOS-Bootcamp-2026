//
//  ContentView.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

struct ComponentA: View {
    var body: some View {
        VStack {
            VStack{
                Text("Your Balance")
                    .font(.title2)
                Text("$1,245.60")
                    .font(.title)
            }
            .padding(30)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(
                        LinearGradient(
                            colors: [.blue, .purple],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing)
                    )
            )
        }
    }
}
