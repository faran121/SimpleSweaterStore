//
//  CartManager.swift
//  SweaterStore
//
//  Created by Maliks on 07/09/2023.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products : [Product] = []
    @Published private(set) var price : Int = 0
    
    func addToCart(product: Product) {
        products.append(product)
        price += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        price -= product.price
    }
    
}
