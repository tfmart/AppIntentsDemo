//
//  StockAssetQuery.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents

struct StockAssetQuery: EntityQuery {
    func entities(for identifiers: [String]) async throws -> [StockAssetEntity] {
        var assets: [StockAssetEntity] = []
        _ = identifiers.compactMap { ticker in
            if let asset = Wallet.asset(for: ticker) {
                assets.append(StockAssetEntity(asset: asset))
            }
        }
        return assets
    }
    
    func suggestedEntities() async throws -> [StockAssetEntity] {
        Wallet.suggestedEntries().map { asset in
            StockAssetEntity(asset: asset)
        }
    }
}
