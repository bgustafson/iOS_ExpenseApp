//
//  ExpenseItem.swift
//  Expense Report
//
//  Created by Gustafson, Brian M. on 5/9/16.
//
//

import Foundation
import UIKit

struct ExpenseItem {

    var Name: String = ""
    var Location: String = ""
    var Cost: Double = 0
    var Reciept: UIImage?


    init?(name: String, location: String, cost: Double) {

        // Initialize properties.
        self.Name = name
        self.Location = location
        self.Cost = cost

        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || cost < 0 {
            return nil
        }
    }

    init?(name: String, location: String, cost: Double, receipt: UIKit.UIImage) {

        self.init(name: name, location: location, cost: cost)

        // Initialize properties.
        self.Reciept = receipt
    }

    mutating func setRecieptImage(_ receipt: UIKit.UIImage) {
        self.Reciept = receipt
    }
}
