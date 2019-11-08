//
//  InventoryCollection.swift
//  Inventory
//
//  Created by Henry Sills on 11/8/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import Foundation


struct InventoryCollection: Codable {
    var status: String
    var products: [Product]
    
    enum CodingKeys: String, CodingKey {
        case status
        case products
    }
}

struct Product: Codable {
    var id: Double
    var category: String
    var title: String
    var price: Double
    var stockedQuantity: Double

}
