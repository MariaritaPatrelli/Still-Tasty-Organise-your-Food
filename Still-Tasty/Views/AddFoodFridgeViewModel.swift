//
//  AddFoodFridgeViewModel.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 18/10/24.
//
import SwiftUI
import Combine

class AddFoodFridgeViewModel: ObservableObject {
    @Published var tipi: [String] = ["Milk","Mozzarella"]
    var quantita : Int = 1
    var datadiscadenza : String = " "
    
    
    }


