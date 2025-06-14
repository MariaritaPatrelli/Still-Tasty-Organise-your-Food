//
//  AddFoodViewModel.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 17/10/24.
//

import SwiftUI
import Combine

class AddFoodViewModel: ObservableObject {
    @Published var items: [String] = ["Milk", "Meat", "Cereal", "Fish", "Eggs", "Orange Juice"]
    var check: Bool = false
    
    
    func addItem(_ item: String) {
        if !item.isEmpty {
            items.append(item)
        }
    }
}
