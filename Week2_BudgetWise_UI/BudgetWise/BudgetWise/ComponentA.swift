//
//  ContentView.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

struct ComponentA: View {
    var accountBalance: Double
    
    var body: some View {
        VStack {
            VStack{
                Text("Your Balance")
                    .font(.title2)
                Text("\(accountBalance, specifier: "%.2f")")
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
