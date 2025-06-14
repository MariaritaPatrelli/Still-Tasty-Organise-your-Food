//
//  FoodViewModel.swift
//  StillTasty
//
//  Created by Michele Coppola on 14/10/24.
//

import SwiftUI

class FoodViewModel: ObservableObject {
    var fridgeFoods = [
        Food(name: "Milk", quantity: 3, expiringDate: "11/10/2024"),
        Food(name: "Bread", quantity: 9, expiringDate: "15/12/2024"),
        Food(name: "Coca-Cola", quantity: 3, expiringDate: "11/10/2025"),
        Food(name: "Meat", quantity: 1, expiringDate: "15/10/2024"),
        Food(name: "Beans", quantity: 10, expiringDate: "08/09/2027"),
        Food(name: "Tuna", quantity: 6, expiringDate: "16/06/2025"),
        Food(name: "Cereals", quantity: 3, expiringDate: "21/10/2024"),
        Food(name: "Orange Juice", quantity: 1, expiringDate: "11/01/2025"),
        Food(name: "Mozzarella", quantity: 1, expiringDate: "17/10/2024"),
        Food(name: "Rice", quantity: 2, expiringDate: "30/05/2025"),
        Food(name: "Chips", quantity: 2, expiringDate: "02/02/2025"),
        Food(name: "Eggs", quantity: 6, expiringDate: "03/11/2024")
    ]
    
    var pantryFoods = [
        Food(name: "Pasta", quantity: 5, expiringDate: "12/08/2025"),
        Food(name: "Flour", quantity: 3, expiringDate: "18/07/2025"),
        Food(name: "Sugar", quantity: 2, expiringDate: "25/12/2026"),
        Food(name: "Olive Oil", quantity: 1, expiringDate: "14/03/2026"),
        Food(name: "Salt", quantity: 1, expiringDate: "N/A"),
        Food(name: "Tea", quantity: 10, expiringDate: "05/09/2026"),
        Food(name: "Coffee", quantity: 2, expiringDate: "30/04/2025"),
        Food(name: "Chocolate", quantity: 4, expiringDate: "21/10/2025"),
        Food(name: "Peanut Butter", quantity: 1, expiringDate: "19/11/2025"),
        Food(name: "Biscuits", quantity: 3, expiringDate: "10/01/2025")
    ]
    
    var foods: [Food] {
            fridgeFoods + pantryFoods
        }
    func addTipo(tipo: Food) {
        fridgeFoods.append(tipo)
    }
}
