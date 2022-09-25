//
//  MyFirstAppIntent.swift
//  MyApp
//
//  Created by Tomas Martins on 23/09/22.
//

import AppIntents

struct MyFirstAppIntent: AppIntent {
    static var title: LocalizedStringResource {
        "My first intent"
    }
    
    func perform() async throws -> some IntentResult {
        return .result(dialog: "Hi, mom! 👋")
    }
}
