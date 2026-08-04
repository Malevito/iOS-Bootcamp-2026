//
//  ComponentB.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

func tapButton() {
    print("Tapped")
}

struct ComponentB: View {
    @Binding var accountBalance: Double
    var body: some View {
            Button {
                accountBalance += 10
                print("Tapped")
            } label: {
                Label("Add Transaction", systemImage: "plus.circle.fill")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }
            .padding(.horizontal)
        }
}
