//
//  InventoryCollectionLoader.swift
//  Inventory
//
//  Created by Henry Sills on 11/8/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import Foundation

class InventoryCollectionLoader {
    
    class func load(jsonFileName: String) -> InventoryCollection? {
        var inventoryCollection: InventoryCollection?
        let jsonDecoder = JSONDecoder()
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
           let jsonData = try? Data(contentsOf: jsonFileUrl) {
                inventoryCollection = try? jsonDecoder.decode(InventoryCollection.self, from: jsonData)
        }
        
        return inventoryCollection
    }
}
