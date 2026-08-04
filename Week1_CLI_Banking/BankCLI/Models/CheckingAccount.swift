//
//  CheckingAccount.swift
//  BankCLI
//
//  Created by Nikolay Malev on 4.08.26.
//

class CheckingAccount: BankAccount {
    override func withdraw(amount: Double, note: String) -> Bool {
        if self.balance - (amount + 1.5) >= 0 {
            self.balance -= (amount + 1.5)
            return true
        } else {
            return false
        }
    }
}
