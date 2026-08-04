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
    let transactions = [
        MockTransaction(name:"Burger", amount:15.70),
        MockTransaction(name:"Pizza", amount:14.40),
        MockTransaction(name:"Starbucks", amount:7.30),
        MockTransaction(name:"KFC", amount:17.90),
        MockTransaction(name:"Banana", amount:2.40)
    ]
    
    var body: some View {
        List(transactions) { transaction in
            HStack {
                Image(systemName: "cup.and.saucer.fill")
                Text("\(transaction.name)")
                Spacer()
                Text("\(transaction.amount, specifier: "%.2f")")
            }
        }
    }
}
