//
//  main.swift
//  BankCLI
//
//  Created by Nikolay Malev on 4.08.26.
//

import Foundation

print("Welcome to your banking manager!")

var myAccount = BankAccount(balance: 0, transactions: [])
myAccount.deposit(amount: 100, note: "Money from mom")
print("after deposit on myAcc", myAccount.balance)
var expense = myAccount.withdraw(amount: 10, note: "Dinner with Toni")
print("after expense on myAcc: ", myAccount.balance)

var checkAccount = CheckingAccount(balance: 0, transactions: [])
checkAccount.deposit(amount: 100, note: "Salary")
print("checkacc deposit: ", checkAccount.balance)
var checkExpense = checkAccount.withdraw(amount: 10, note: "Taxes")
print("checkacc withdraw: ", checkAccount.balance)

let secondReference = checkAccount
print("secondReference values: ", secondReference)

secondReference.withdraw(amount: 30, note: "Surprise expense")
print(checkAccount.balance)
print(secondReference.balance)

