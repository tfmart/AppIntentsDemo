//
//  StockAsset.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import Foundation

class StockAsset {
    var name: String
    var ticker: String
    var currentValue: Double
    
    init(name: String, ticker: String, currentValue: Double) {
        self.name = name
        self.ticker = ticker
        self.currentValue = currentValue
    }
}
