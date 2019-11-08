//
//  InventoryCollectionViewController.swift
//  Inventory
//
//  Created by Henry Sills on 11/8/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class InventoryCollectionViewController: UIViewController {
    @IBOutlet weak var displayTextView: UITextView!
    
    let jsonFileName = "inventory"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let inventoryCollection = InventoryCollectionLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            displayInfo += "Status: \(inventoryCollection.status)\n"
            for product in inventoryCollection.products {
                displayInfo += "Product:\n"
                displayInfo += "\(product.id)\n"
                displayInfo += "\(product.category)\n"
                displayInfo += "\(product.title)\n"
                displayInfo += "\(product.price)\n"
                displayInfo += "\(product.stockedQuantity)\n"
            }
            displayTextView.text = displayInfo
        } else {
            displayTextView.text = "Error."
        }
    }
}
