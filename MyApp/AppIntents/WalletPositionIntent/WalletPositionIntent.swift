//
//  WalletPositionIntent.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents
import SwiftUI

struct WalletPositionIntent: AppIntent {
    @Parameter(title: "Stock Asset")
    var asset: StockAssetEntity
    
    static var parameterSummary: some ParameterSummary {
        Summary("Show current position for \(\.$asset)")
    }
    
    static var title: LocalizedStringResource {
        "Show position for asset"
    }
    
    func perform() async throws -> some IntentResult {
        return .result(dialog: IntentDialog(stringLiteral: "You currently position at \(asset.asset.ticker) is worth $\(String(format: "%.2f", asset.asset.currentValue))"),
                       view: PositionPromptView(entity: asset))
    }
}
