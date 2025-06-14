//
//  MainView.swift
//  StillTasty
//
//  Created by Michele Coppola on 15/10/24.
//

import SwiftUI

struct ContainerView: View {
    @State var viewModel = ShoppingFoodViewModel()
    
    
    
    var body: some View {
        TabView {
            Tab("My Food", systemImage: "carrot") {
                MyFoodView(
                    
                )
            }
            Tab("Shopping List", systemImage: "list.bullet") {
                ShoppingListView(foodviewmodel: viewModel)
            }
            Tab("Calendar", systemImage: "calendar"){
                CalendarView()
            }
        }
        .tint(.vERDESCUROBUTTONS)
        .navigationTitle("My Food")
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: AddFoodView(viewModel: viewModel)){
                    Image(systemName: "plus.circle")
                        .foregroundColor(Color.blue)
                }
            }

        }
    }
}
struct MyFoodView: View {
    @State private var selectedTab = 0
    @State var viewModel3 = FoodViewModel()
    var addfridgefood = AddFoodFridgeview()
    var body: some View {
            VStack {
                
                Picker("Select Tab", selection: $selectedTab) {
                    Text("Fridge").tag(0)
                    Text("Pantry").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                .padding(.top)
                .scaleEffect(0.9)
                
                if selectedTab == 0 {
                    FridgeView(foodviewmodel2: viewModel3)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarTrailing) {
                                NavigationLink(destination: addfridgefood){
                                    Image(systemName: "plus.circle")
                                        .foregroundColor(Color.blue)
                                }
                            }

                        }
                } else {
                    PantryView()
                }
            }
            .background(Color(.systemGroupedBackground))
        }
}

#Preview {
    ContainerView()
}

