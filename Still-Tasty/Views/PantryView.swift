//
//  PantryView.swift
//  StillTasty
//
//  Created by Michele Coppola on 15/10/24.
//
// pantry view 
import SwiftUI

struct PantryView: View {
    
    var foodData = FoodViewModel()
        
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(foodData.pantryFoods) { food
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
        }
    }
}

#Preview {
    PantryView()
}
