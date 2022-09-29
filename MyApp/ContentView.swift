//
//  ContentView.swift
//  MyApp
//
//  Created by Tomas Martins on 25/09/22.
//

import SwiftUI
import UIKit
import AppIntents

struct ContentView: View {
    @ObservedObject var navigator: Navigator = .shared
    @State var showInfo: Bool = true
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Take a look at the demo App Shortcuts:")
                ShortcutsLink()
                Spacer()
            }
            .padding()
            .onAppear {
                AppShortcuts.updateAppShortcutParameters()
            }
            .sheet(isPresented: $navigator.isPresentingMessage) {
                messageView
            }
            .sheet(isPresented: $showInfo, content: {
                infoView
            })
            .toolbar {
                ToolbarItem {
                    Button {
                        showInfo = true
                    } label: {
                        Image(systemName: "info.circle")
                    }
                }
            }
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
    
    var infoView: some View {
        NavigationView {
            List {
                Section("Demo app by:") {
                    HStack {
                        Spacer()
                        VStack {
                            Image("me")
                                .resizable()
                                .clipShape(Circle())
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 120, height: 120)
                            Text("Tomás Martins")
                                .font(.title)
                                .bold()
                        }
                        Spacer()
                    }
                }
                Section("Reach me at:") {
                    infoField(title: "GitHub",
                              value: "@tfmart",
                              website: "www.github.com/tfmart")
                    infoField(title: "Twitter",
                              value: "@tommycadle",
                              website: "www.twitter.com/tommycadle")
                    infoField(title: "LinkedIn",
                              value: "Tomás Martins (tfmart)",
                              website: "www.linkedin.com/in/tfmart")
                }
                
                Section {
                    Image("qr")
                }
            }
            .toolbar {
                ToolbarItem {
                    Button("Close") {
                        showInfo = false
                    }
                }
            }

        }
    }
    
    func infoField(
        title: String,
        value: String,
        website: String
    ) -> some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(title)
                .font(.footnote)
                .foregroundColor(.init(uiColor: .secondaryLabel))
                .bold()
            Link(value, destination: URL(string: website)!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
