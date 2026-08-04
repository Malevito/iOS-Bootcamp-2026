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

    var body: some Scene {
        WindowGroup {
            NavigationView {
                VStack(spacing: 0) {
                    ComponentA(accountBalance: $balance)
                        .padding(.horizontal)
                        .padding(.top, 20)
                    
                    ComponentB(accountBalance: $balance)
                        .padding(.vertical, 10)
                    
                    ComponentC()
                        .listStyle(.plain)
                }
                .navigationTitle("BudgetWise")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}
