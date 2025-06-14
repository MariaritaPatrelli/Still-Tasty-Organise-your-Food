//
//  ShoppingView.swift
//  StillTasty
//
//  Created by Mariarita Patrelli on 15/10/24.
//

import SwiftUI

struct Element: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
}
// Struct for the shopping list
struct ShoppingListView: View {

    var foodviewmodel: ShoppingFoodViewModel
    
    
    var body: some View {
        NavigationStack{
            VStack {
                List(foodviewmodel.shoppingfood) { shoppingfood in
                    TaskCellView(task: Element(name: shoppingfood.name, isCompleted: shoppingfood.preso))

                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddFoodView(viewModel: foodviewmodel)){
                        Image(systemName: "plus.circle")
                            .foregroundColor(Color.blue)
                    }
                }

            }
            .navigationTitle("Shopping List")
            
        }
    }
}

// checking part of the shopping list
struct TaskCellView: View {

    @State var task: Element

    var body: some View {
        HStack {
            Image(systemName: task.isCompleted ? "checkmark.circle": "circle")
                .onTapGesture {
                    task.isCompleted.toggle()
                }
            Text(task.name)
        }
    }
}
