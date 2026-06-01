//
//  CartView.swift
//  
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-01.
//

import SwiftUI

struct CartView: View {
    
    @EnvironmentObject var cart: CartManager
    
    var body: some View {
        VStack {
            
            List {
                ForEach(cart.items) { coffee in
                    
                    HStack {
                        Text(coffee.name)
                        
                        Spacer()
                        
                        Text("$\(coffee.price, specifier: "%.2f")")
                    }
                }
            }
            
            VStack {
                Text("Total: $\(cart.total, specifier: "%.2f")")
                    .font(.title2)
                    .padding()
                
                Button("Checkout") {
                    print("Checkout tapped")
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.brown)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Your Cart")
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
