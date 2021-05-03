//
//  Order.swift
//  CupcakeCorner.
//
//  Created by sanmi_personal on 03/05/2021.
//

import Foundation

class Order : ObservableObject {
    static let types = ["Vanilla", "Strawberry","Chocolate", "Rainbow"]
    
    @Published var type = 0
    @Published var quantity = 3
    
    @Published var specialRequestEnabled = false {
        didSet {
            if specialRequestEnabled == false {
                addSprinkles = false
                extraFrosting = false
            }
        }
    }
    @Published var extraFrosting = false
    @Published var addSprinkles = false
    
    @Published var name = ""
    @Published var city = ""
    @Published var streetAddress = ""
    @Published var zip = ""
    
    var hasValidAdress : Bool {
        if name.isEmpty || city.isEmpty || streetAddress.isEmpty || zip.isEmpty {
            return false
        }
        return true
    }
    
    var cost: Double {
        var cost = Double(quantity) * 2
        cost += Double(type) / 2
        
        if extraFrosting {
            cost += Double(quantity)
        }
        
        if addSprinkles {
            cost += Double(quantity) / 2
        }
        
        return cost
    }
}
