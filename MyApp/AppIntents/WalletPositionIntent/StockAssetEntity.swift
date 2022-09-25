//
//  StockAssetEntity.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents

struct StockAssetEntity: AppEntity, Identifiable {
    var asset: StockAsset
    var id: String {
        return asset.ticker
    }
    
    static var defaultQuery = StockAssetQuery()
    static var typeDisplayRepresentation: TypeDisplayRepresentation = "Stock Asset"
    
    var displayRepresentation: DisplayRepresentation {
        return DisplayRepresentation(stringLiteral: asset.ticker)
    }
}
