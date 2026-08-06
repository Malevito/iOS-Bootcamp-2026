//
//  ComponentB.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

struct ComponentB: View {
    @ObservedObject var viewModel: BudgetWiseViewModel
    
    var body: some View {
            Button {
                viewModel.addTransaction(name: "Coffee", amount: 5.50)
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
