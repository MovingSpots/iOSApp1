//
//  Coffee.swift
//  
//
//  Created by SELVARAJ THYAGARAJAN on 2026-06-01.
//

import Foundation

struct Coffee: Identifiable, Codable {
    let id: String
    let name: String
    let description: String
    let price: Double
    let image: String
    let category: String
}
