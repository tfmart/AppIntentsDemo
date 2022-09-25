//
//  StockAsset.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import Foundation

class StockAsset {
    var ticker: String
    var currentValue: Double
    
    init(ticker: String, currentValue: Double) {
        self.ticker = ticker
        self.currentValue = currentValue
    }
}
