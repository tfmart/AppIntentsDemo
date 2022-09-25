//
//  PositionPromptView.swift
//  MyApp
//
//  Created by Tomas Martins on 25/09/22.
//

import SwiftUI

struct PositionPromptView: View {
    var entity: StockAssetEntity

    var body: some View {
        HStack {
            if let icon = Wallet.icon(for: entity.asset.ticker) {
                Image(icon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
            }
            Text(entity.asset.ticker)
                .bold()
                .font(.system(.body,
                              design: .rounded))
            
            Spacer()
                Text("$\(String(format: "%.2f", entity.asset.currentValue))")
                    .font(.system(.title,
                              design: .rounded))
                    .bold()
            Image(systemName: "chart.line.uptrend.xyaxis")
                .foregroundColor(.green)
                .bold()
        }.padding()
    }
}

struct PositionPromptView_Previews: PreviewProvider {
    static var previews: some View {
        PositionPromptView(entity: .init(asset: .init(name: "NVidia",
                                                      ticker: "NVDA",
                                                      currentValue: 1200)))
    }
}
