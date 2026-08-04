import UIKit

// Task: Fix this struct and the function below it.
// Goal: It should filter out nil values, sort descending, and sum the results.

struct InventoryItem {
    let name: String
    let price: Double?
}

let storeItems = [
    InventoryItem(name: "MacBook", price: 1299.99),
    InventoryItem(name: "AirPods", price: nil),
    InventoryItem(name: "iPad", price: 799.00),
    InventoryItem(name: "Charging Cable", price: 19.99),
    InventoryItem(name: "Studio Display", price: nil)
]

// 🚨 THIS FUNCTION HAS BUGS. FIX IT.
func calculateTotalSellableValue(items: [InventoryItem]) -> Double {
    var total = 0.0
    for item in items {
        if item.price != nil {
            total += item.price ?? 0
        }
    }
    // Sort descending: The highest value items should be listed first in the debug print.
    
    let sortedPrices = items.sorted { $0.price ?? 0 > $1.price ?? 0 }
    print("Highest value item: \(sortedPrices.first?.price)")
    return total
}

let result = calculateTotalSellableValue(items: storeItems)
print("Total Revenue: $\(result)")
