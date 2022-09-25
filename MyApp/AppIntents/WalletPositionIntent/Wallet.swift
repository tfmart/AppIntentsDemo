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
            .init(name: "Apple", ticker: "AAPL", currentValue: 1200),
            .init(name: "Microsoft", ticker: "MSFT", currentValue: 800),
            .init(name: "NVidia", ticker: "NVDA", currentValue: 400)
        ]
    }
    
    static func asset(for ticker: String) -> StockAsset? {
        return assets.first(where: {$0.ticker == ticker })
    }
    
    static func icon(for ticker: String) -> String? {
        switch ticker.uppercased() {
        case "AAPL", "MSFT", "NVDA": return ticker.uppercased()
        default: return nil
        }
    }
    
    static func suggestedEntries() -> [StockAsset] {
        return assets
    }
}
