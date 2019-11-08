//
//  InventorySet.swift
//  Inventory
//
//  Created by Henry Sills on 11/8/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import Foundation

struct InventorySet: Codable {
    var status: String
    var products: [ProductItem]
    
    enum CodingKeys: String, CodingKey {
        case status
        case products
    }
}

struct ProductItem: Codable {
    var id: Double
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Double
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case category
        case title
        case price
        case stockedQuantity
    }
}
