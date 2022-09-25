//
//  ColoredHeartIntent.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents

struct ColoredHeartIntent: AppIntent {
    @Parameter(title: "Color")
    var color: HeartColor
    
    static var parameterSummary: some ParameterSummary {
        Summary("Show a \(\.$color) colored heart")
    }
    
    static var title: LocalizedStringResource {
        "Heart Color"
    }
    
    func perform() async throws -> some IntentResult {
        return .result(dialog: IntentDialog(stringLiteral: color.rawValue))
    }
}
