//
//  Product.swift
//  Ecommerce-mvvm
//
//  Created by Beyza Nur Tekerek on 7.05.2025.
//

import Foundation

struct Products: Decodable {
    let products: [Product]
}

struct Product: Decodable {
    var createdAt: String?
    let name: String?
    let image: String?
    let price: String?
    let discription: String?
    let model: String?
    let brand: String?
    let id: String?
    
    var isFavorite: Bool?
    var cardQuantity: Int?
    var priceDouble: Double {
        return Double(price ?? "0") ?? 0
    }
    
    init(createdAt: String? = nil, name: String?, image: String?, price: String?, discription: String?, model: String?, brand: String?, id: String?, isFavorite: Bool? = nil, cardQuantity: Int? = nil) {
        self.createdAt = createdAt
        self.name = name
        self.image = image
        self.price = price
        self.discription = discription
        self.model = model
        self.brand = brand
        self.id = id
        self.isFavorite = isFavorite
        self.cardQuantity = cardQuantity
    }
}
