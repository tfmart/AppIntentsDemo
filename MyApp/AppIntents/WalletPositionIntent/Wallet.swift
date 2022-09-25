//
//  Wallet.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import Foundation

struct Wallet {
    private static var assets: [StockAsset] {
        [
            .init(ticker: "AAPL", currentValue: 1200),
            .init(ticker: "MSFT", currentValue: 800),
            .init(ticker: "NVDA", currentValue: 400)
        ]
    }
    
    static func asset(for ticker: String) -> StockAsset? {
        return assets.first(where: {$0.ticker == ticker })
    }
    
    static func suggestedEntries() -> [StockAsset] {
        return assets
    }
}
