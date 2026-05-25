//
//  ContentView.swift
//  TimHortonsApp
//
//  Created by SELVARAJ THYAGARAJAN on 2026-05-25.
//

import SwiftUI

//  Main screen of the app.
//  It shows all saved Tim Hortons orders.
struct ContentView: View {
    @StateObject var store = OrderStore()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.orders) {
                    order in
                    VStack(alignment: .leading) {
                        Text(order.name).font(.headline)
                        Text("\(order.size) \(order.drink)")
                        if !order.notes.isEmpty {
                            Text(order.notes).font(.caption)
                        }
                    }
                }
            }
            .navigationTitle("Coffee Run ☕️")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddOrderView(store: store)) {
                        Text("Add")
                    }
                }
            }
        }
    }
    
   //  #Preview {
   //    ContentView()
   // }
}
