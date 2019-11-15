//
//  Wage.swift
//  Window Shopper
//
//  Created by Serena Lambert on 10/11/2019.
//  Copyright © 2019 Serena Lambert. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
