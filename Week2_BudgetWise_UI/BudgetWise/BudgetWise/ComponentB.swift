//
//  ComponentB.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

struct ComponentB: View {
    @Binding var accountBalance: Double
    @Binding var transactions: [MockTransaction]
    
    var body: some View {
            Button {
                let newTransaction = MockTransaction(
                    name: "Coffee",
                    amount: 5.50
                )
                transactions.append(newTransaction)
                accountBalance -= newTransaction.amount
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
