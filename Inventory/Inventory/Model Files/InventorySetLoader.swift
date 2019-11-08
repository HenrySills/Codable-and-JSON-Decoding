//
//  InventorySetLoader.swift
//  Inventory
//
//  Created by Henry Sills on 11/8/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import Foundation


class InventorySetLoader {
    
    class func load(jsonFileName: String) -> InventorySet? {
        var inventorySet: InventorySet?
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
            let jsonData = try? Data(contentsOf: jsonFileUrl) {
            inventorySet = try? jsonDecoder.decode(InventorySet.self, from: jsonData)
        }
        
        return inventorySet
    }
}
