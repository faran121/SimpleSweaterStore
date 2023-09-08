//
//  ProductModel.swift
//  SweaterStore
//
//  Created by Maliks on 06/09/2023.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

let products = [Product(name: "Sweater 1", image: "sweater1", price: 20),
                Product(name: "Sweater 2", image: "sweater2", price: 10),
                Product(name: "Sweater 3", image: "sweater3", price: 30),
                Product(name: "Sweater 4", image: "sweater4", price: 120),
                Product(name: "Sweater 5", image: "sweater5", price: 220),
                Product(name: "Sweater 6", image: "sweater6", price: 5)
]
