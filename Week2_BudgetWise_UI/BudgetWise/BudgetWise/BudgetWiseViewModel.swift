//
//  BudgetWiseViewModel.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI
internal import Combine

class BudgetWiseViewModel: ObservableObject {
    @Published var balance: Double = 1245.60
    @Published var transactions: [MockTransaction] = [
        MockTransaction(name: "Burger", amount: 15.70),
        MockTransaction(name: "Pizza", amount: 14.40),
        MockTransaction(name: "Starbucks", amount: 7.30)
    ]
    
    
    func addTransaction(name: String, amount: Double) {
        let newTransaction = MockTransaction(name: name, amount: amount)
        transactions.append(newTransaction)
        balance -= amount
        print("Transaction added: \(name)")
    }
}


