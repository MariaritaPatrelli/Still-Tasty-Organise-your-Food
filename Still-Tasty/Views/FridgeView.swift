//
//  FridgeView.swift
//  StillTasty
//
//  Created by Michele Coppola on 14/10/24.
//

import SwiftUI

struct FridgeView: View {
    
    var foodData = FoodViewModel()
    var foodviewmodel2: FoodViewModel
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(foodData.fridgeFoods) { food
                    in
                    
                    VStack(alignment: .leading) {
                        Text(food.name)
                            .fontWeight(.semibold)
                        Text("expires: \(food.expiringDate)")
                            .fontWeight(.light)
                            .font(.system(size: 14))
                            .foregroundStyle(.gray)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddFoodFridgeview(viewModel2: foodviewmodel2)){
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color.blue)
                    }
                }

            }
        }
    }
}

