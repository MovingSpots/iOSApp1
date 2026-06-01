//
//  CoffeeCardView.swift
//  
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-01.
//

import SwiftUI

struct CoffeeCardView: View {
    let coffee: Coffee
    @EnvironmentObject var cart: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(coffee.image)
                .resizable()
                .scaledToFit()
                .frame(height: 120)
                .clipped()
            
            Text(coffee.name)
                .font(.title)
                .bold()
            
            Text(coffee.description)
                .font(.subheadline)
                .foregroundStyle(.gray)
            
            HStack {
                Text("$\(coffee.price, specifier: "%.2f")")
                    .font(.subheadline)
                    .foregroundColor(.green)
                
                Spacer()
                
                Button(action: {
                    cart.add(coffee)
                }) {
                    Image(systemName: "plus.circle.fill")
                        .font(.title2)
                        .foregroundColor(.brown)
                }
            }
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    CoffeeCardView(
        coffee: Coffee(
            id: "1",
            name: "Espresso",
            description: "Strong and bold coffee",
            price: 2.99,
            image: "coffee2",
            category: "Hot"
        )
    )
    .environmentObject(CartManager())
}
