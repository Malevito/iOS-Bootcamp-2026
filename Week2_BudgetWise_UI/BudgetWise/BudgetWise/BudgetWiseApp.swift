//
//  BudgetWiseApp.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

@main
struct BudgetWiseApp: App {
    @State private var balance: Double = 1245.60
    
    @State private var transactions: [MockTransaction] = [
        MockTransaction(name: "Burger", amount: 15.70),
        MockTransaction(name: "Pizza", amount: 14.40),
        MockTransaction(name: "Starbucks", amount: 7.30)
    ]

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                VStack(spacing: 0) {
                    ComponentA(accountBalance: $balance)
                        .padding(.horizontal)
                        .padding(.top, 20)
                    
                    ComponentB(accountBalance: $balance, transactions: $transactions)
                        .padding(.vertical, 10)
                    
                    ComponentC(transactions: $transactions)
                        .listStyle(.plain)
                }
                .navigationTitle("BudgetWise")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
