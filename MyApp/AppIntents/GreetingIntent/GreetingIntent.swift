//
//  GreetingIntent.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents

struct GreetingIntent: AppIntent {
    @Parameter(title: "Name")
    var name: String
    
    static var parameterSummary: some ParameterSummary {
        Summary("Say hello to \(\.$name)")
    }
    
    static var title: LocalizedStringResource {
        "Say hello to someone"
    }
    
    func perform() async throws -> some IntentResult {
        return .result(dialog: "Hey there, \(name) 👋")
    }
}
