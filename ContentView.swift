//
//  ContentView.swift
//  TimHortonsApp
//
//  Created by SELVARAJ THYAGARAJAN on 2026-05-25.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var selectedCategory = "All"
    
    @StateObject var cart = CartManager()
    
    let coffees = loadCoffeeData()
    let categories = ["All", "Hot", "Cold"]
    
    var filteredCoffees: [Coffee] {
        coffees.filter { coffee in
            (selectedCategory == "All" || coffee.category == selectedCategory)
            &&
            (searchText.isEmpty ||
             coffee.name.lowercased().contains(searchText.lowercased()))
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                Picker("Category", selection: $selectedCategory) {
                    ForEach(categories, id: \.self) { category in
                        Text(category)
                    }
                }
                .pickerStyle(.segmented)
                .padding()
                
                ScrollView {
                    LazyVGrid(
                        columns: [
                            GridItem(.flexible()),
                            GridItem(.flexible())
                        ],
                        spacing: 15
                    ) {
                        ForEach(filteredCoffees) { coffee in
                            CoffeeCardView(coffee: coffee)
                                .environmentObject(cart)
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Coffee Menu ☕")
            .searchable(text: $searchText)
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cart)
                } label: {
                    Image(systemName: "cart")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
