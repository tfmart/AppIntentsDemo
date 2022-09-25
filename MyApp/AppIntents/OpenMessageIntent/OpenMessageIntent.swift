//
//  OpenMessageIntent.swift
//  MyApp
//
//  Created by Tomas Martins on 25/09/22.
//

import AppIntents

struct OpenMessageIntent: AppIntent {
    @Parameter(title: "Message")
    var message: String
    
    static var openAppWhenRun: Bool = true
    
    static var title: LocalizedStringResource {
        "Show Message"
    }
    
    static var parameterSummary: some ParameterSummary {
        Summary("Display \(\.$message) inside the app")
    }
    
    @MainActor
    func perform() async throws -> some IntentResult {
        Navigator.shared.showMessage(message)
        return .result()
    }
}
