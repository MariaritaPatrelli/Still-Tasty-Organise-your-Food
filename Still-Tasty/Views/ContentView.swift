//
//  ContentView.swift
//  Still-Tasty
//
//  Created by Mariarita Patrelli on 14/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.171, green: 0.202, blue: 0.158)
                    .ignoresSafeArea()
                
                
                Image("fagiolo 1")
                    .position(x:100, y:75)
                
                Image("fagiolo 2")
                    .position(x:300, y:200)
                
                Image("fagiolo 3")
                    .position(x:100, y:600)
                
                Image("fagiolo 4")
                    .position(x:300, y:700)
                
                VStack {
                    Image("Group")
                    
                    Text("Welcome to StillTasty!")
                        .foregroundStyle(.verdeChiaro)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    NavigationLink(destination: ContainerView()) {
                        Text("Get Started!")
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal, 20)
                    .font(.headline)
                    .foregroundStyle(.verdeScuro)
                    .background(.verdeChiaro)
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
