//
//  InventorySetViewController.swift
//  Inventory
//
//  Created by Henry Sills on 11/8/19.
//  Copyright © 2019 Henry Sills. All rights reserved.
//

import UIKit

class InventorySetViewController: UIViewController {

    @IBOutlet weak var displayTextView: UITextView!
    
    let jsonFileName = "inventory"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let inventorySet = InventorySetLoader.load(jsonFileName: jsonFileName) {
            var displayInfo = ""
            displayInfo += "Status: \(inventorySet.status)\n"
            for product in inventorySet.products {
                displayInfo += "Photo:\n"
                displayInfo += "\(product.id)\n"
                displayInfo += "\(product.category)\n"
                displayInfo += "\(product.title)\n"
                displayInfo += "\(product.category)\n"
                displayInfo += "\(product.price)\n"
                displayInfo += "\(product.stockedQuantity)\n\n"
            }
            displayTextView.text = displayInfo
        } else {
            displayTextView.text = "Error."
        }
    }
}
