//
//  BankAccount.swift
//  BankCLI
//
//  Created by Nikolay Malev on 4.08.26.
//

import Foundation

class BankAccount {
    var balance: Double
    var transactions: [Transaction]
    
    init(balance: Double, transactions: [Transaction]) {
        self.balance = balance
        self.transactions = transactions
    }
    
    func deposit(amount: Double, note: String) {
        self.transactions.append(Transaction(amount: amount, note: note, date: Date.now))
        self.balance += amount
    }
    
    func withdraw(amount: Double, note: String) -> Bool {
        if self.balance - amount >= 0 {
            self.balance -= amount
            return true
        } else {
            return false
        }
    }
}
