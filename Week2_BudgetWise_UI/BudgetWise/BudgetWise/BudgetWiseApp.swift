//
//  BudgetWiseApp.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

@main
struct BudgetWiseApp: App {
    @StateObject private var viewModel = BudgetWiseViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationStack {
                VStack(spacing: 0) {
                    ComponentA(accountBalance: viewModel.balance)
                        .padding(.horizontal)
                        .padding(.top, 20)
                    
                    ComponentB(viewModel: viewModel)
                        .padding(.vertical, 10)
                    
                    ComponentC(transactions: viewModel.transactions)
                        .listStyle(.plain)
                }
                .navigationTitle("BudgetWise")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

