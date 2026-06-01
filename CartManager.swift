//
//  CartManager.swift
//  
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-01.
//
import Foundation
import Combine

class CartManager: ObservableObject {
    
    @Published var items: [Coffee] = []
    
    func add(_ coffee: Coffee) {
        items.append(coffee)
    }
    
    func remove(_ coffee: Coffee) {
        items.removeAll { $0.id == coffee.id }
    }
    
    var total: Double {
        items.reduce(0) { $0 + $1.price }
    }
}

