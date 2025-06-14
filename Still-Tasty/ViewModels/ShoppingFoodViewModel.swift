//
//  ShoppingViewModel.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 15/10/24.
//

import SwiftUI
import Observation


@Observable
class ShoppingFoodViewModel {
    var shoppingfood = [
        ShoppingFood(name: "Milk", quantity: 3, preso: true),
        ShoppingFood(name: "Bread", quantity: 9, preso: false),
        ShoppingFood(name: "Coca-Cola", quantity: 3,preso: true),
        ShoppingFood(name: "Meat", quantity: 1, preso: false),
        ShoppingFood(name: "Beans", quantity: 10,preso: true),
        ShoppingFood(name: "Tuna", quantity: 6, preso: false),
        ShoppingFood(name: "Cereals", quantity: 3, preso: true),
        ShoppingFood(name: "Orange Juice", quantity: 1, preso: true),
        ShoppingFood(name: "Mozzarella", quantity: 1, preso: false),
        ShoppingFood(name: "Rice", quantity: 2, preso: false),
        ShoppingFood(name: "Chips", quantity: 2, preso: false),
        ShoppingFood(name: "Eggs", quantity: 6, preso: true)
    ]
    
    func addItem(item: ShoppingFood) {
        shoppingfood.append(item)
    }

}
