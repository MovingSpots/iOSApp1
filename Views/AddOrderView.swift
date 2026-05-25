//
//  AddOrderView.swift
//  TimHortonsApp
//
//  Created by SELVARAJ THYAGARAJAN on 2026-05-25.
//

import SwiftUI
import Combine

struct AddOrderView: View {
    @ObservedObject var store: OrderStore
    
    @State private var name = ""
    @State private var drink = ""
    @State private var size = "Medium"
    @State private var notes = ""
    
    let sizes = ["Small", "Medium", "Large"]
    
    var body: some View {
        Form {
            Section(header: Text("Person")) {
                TextField("Name", text: $name)
            }
            
            Section(header: Text("Order")) {
                TextField("Drink (e.g. Coffee)", text: $drink)
                
                Picker("Size", selection: $size) {
                        ForEach(sizes, id: \.self) {
                        size in
                        Text(size)
                    }
                }
                
                TextField("Notes", text: $notes)
            }
            
            Button("Save Order") {
                let newOrder = Order(
                    name: name,
                    drink: drink,
                    size: size,
                    notes: notes
                )
                
                store.addOrder(order: newOrder)
                               
                name = ""
                drink = ""
                size = "Medium"
                notes = ""
            }
        }
        .navigationTitle("Add Order")
    }
}
#Preview {
    AddOrderView(store: OrderStore())
}
