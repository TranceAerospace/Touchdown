//
//  Shop.swift
//  Touchdown
//
//  Created by Mark Trance on 4/15/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
