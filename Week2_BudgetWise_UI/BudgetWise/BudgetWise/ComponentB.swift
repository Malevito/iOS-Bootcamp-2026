//
//  ComponentB.swift
//  BudgetWise
//
//  Created by Nikolay Malev on 4.08.26.
//

import SwiftUI

func tapButton() {
    print("Tapped")
}

struct ComponentB: View {
    var body: some View {
        VStack {
            Button("Click", systemImage: "plus.circle.fill", action: tapButton)
        }
    }
}
