//
//  Navigator.swift
//  MyApp
//
//  Created by Tomas Martins on 25/09/22.
//

import Foundation

class Navigator: ObservableObject {
    static var shared: Navigator = .init()
    
    @Published var isPresentingMessage: Bool = false
    var message: String = ""
    
    func showMessage(_ message: String) {
        isPresentingMessage = true
        self.message = message
    }
}
