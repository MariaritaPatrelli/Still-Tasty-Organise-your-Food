//
//  AddFoodView.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 17/10/24.
//

import SwiftUI

struct AddFoodView: View {
    @State private var newFoodItem = "" // State for new food item input
    var viewModel: ShoppingFoodViewModel // Use the view model

    var body: some View {
        NavigationView {
            VStack {
                // TextField to enter a new food item
                TextField("Enter food item", text: $newFoodItem)
                    .textFieldStyle(.roundedBorder)
                    .padding()

                Button(action: {
                    viewModel.addItem(item: ShoppingFood(name: newFoodItem))
                }) {
                    Text("Add")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.verdeScuro)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()

                List {
                    ForEach(viewModel.shoppingfood) { item in
                        Text(item.name)
                    }
                }
            }
            .navigationTitle("Search Food")
        }
    }
}

#Preview {
    AddFoodView(viewModel: ShoppingFoodViewModel())
}
