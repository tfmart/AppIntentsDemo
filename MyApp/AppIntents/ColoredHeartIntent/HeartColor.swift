//
//  HeartColor.swift
//  MyApp
//
//  Created by Tomas Martins on 24/09/22.
//

import AppIntents

enum HeartColor: String {
    case red = "❤️"
    case blue = "💙"
    case yellow = "💛"
    case orange = "🧡"
    case green = "💚"
    case black = "🖤"
    case white = "🤍"
    case brown = "🤎"
}

extension HeartColor: AppEnum {
    static var typeDisplayRepresentation: TypeDisplayRepresentation {
        "Heart color"
    }
    
    static var caseDisplayRepresentations: [HeartColor : DisplayRepresentation] {
        [
            .red: "Red",
            .blue: "Blue",
            .yellow: "Yellow",
            .orange: "Orange",
            .green: "Green",
            .black: "Black",
            .white: "White",
            .brown: "Brown",
        ]
    }
}
