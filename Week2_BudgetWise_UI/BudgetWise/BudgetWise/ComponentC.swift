//
//  ComponentC.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

struct MockTransaction: Identifiable {
    var id: UUID = UUID()
    var name: String
    var amount: Double
}

struct ComponentC: View {
    @Binding var transactions: [MockTransaction]
    
    var body: some View {
        List($transactions) { $transaction in
            HStack {
                Image(systemName: "cup.and.saucer.fill")
                Text("\(transaction.name)")
                Spacer()
                Text("\(transaction.amount, specifier: "%.2f")")
                    .foregroundColor(transaction.amount > 0 ? .green : .red)
            }
        }
    }
}
