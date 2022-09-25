//
//  ContentView.swift
//  MyApp
//
//  Created by Tomas Martins on 25/09/22.
//

import SwiftUI
import AppIntents

struct ContentView: View {
    @ObservedObject var navigator: Navigator = .shared
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Spacer()
            ShortcutsLink()
        }
        .padding()
        .onAppear {
            AppShortcuts.updateAppShortcutParameters()
        }
        .sheet(isPresented: $navigator.isPresentingMessage) {
            messageView
        }
    }
    
    var messageView: some View {
        VStack {
            Image(systemName: "square.2.stack.3d.top.filled")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(navigator.message)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
