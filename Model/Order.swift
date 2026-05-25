//
//  Order.swift
//  TimHortonsApp
//
//  Created by SELVARAJ THYAGARAJAN on 2026-05-25.
//

import Foundation

//  This file contains the data model for one Tim Hortons order.

//  Identifiable:
//  Allows SwiftUI List to identify each order uniquely.

//  Codable:
//  Allows the order to be saved and loaded using UserDefaults.
struct Order: Identifiable, Codable {
    
    //  Unique ID for each order.
    var id = UUID()
    
    //  Name of the person odering.
    var name: String
    
    //  Selected drink name.
    var drink: String
    
    //  Selected drink size.
    var size: String
    
    //  Extra details such as milk, sugar, cream, etc.
    var notes: String
}
