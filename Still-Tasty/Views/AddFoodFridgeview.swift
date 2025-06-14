//
//  AddFoodFridge.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 18/10/24.
//

import SwiftUI

struct AddFoodFridgeview: View {
    @State private var newFridgeTipo = "" // State for new food item input
    var viewModel: AddFoodFridgeViewModel = AddFoodFridgeViewModel()
    // Use the view model
    var viewModel2: FoodViewModel = FoodViewModel()

    var body: some View {
        NavigationView {
            VStack {
                // TextField to enter a new food item
                TextField("Enter food", text: $newFridgeTipo)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button {
                    viewModel2.addTipo(tipo: Food(name: newFridgeTipo, quantity: 1, expiringDate: " "))
                } label: {
                    Text("Add")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.verdeScuro)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                    .padding()
                }


                

                List {
                    ForEach(viewModel2.fridgeFoods) { tipo in
                        Text(tipo.name)
                    }
                }
            }
            .navigationTitle("Search Food")
        }
    }
}

#Preview {
    AddFoodFridgeview(viewModel2: FoodViewModel())
}
