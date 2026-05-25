//
//  OrderStore.swift
//  TimHortonsApp
//
//  Created by SELVARAJ THYAGARAJAN on 2026-05-25.
//

import Foundation
import SwiftUI
import Combine

//  OrderStore works like the ViewModel.
//  It manages the list of orders and saving/Loading data.
class OrderStore: ObservableObject {
    
    //  @Published means the screen refreshes automatically
    //  whenever the order array changes.
    @Published var orders: [Order] = []
    
    //  Adds a new order to the list.
    func addOrder(order: Order) {
        orders.append(order)
    }
} // class
