//
//  CartItem.swift
//  
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-01.
//

import Foundation

struct CartItem: Identifiable {
    let id: UUID = UUID()
    // relationship
    let coffee: Coffee
    var quantity: Int
}
