//
//  SwitUIBasicApp.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/26/25.
//

import SwiftUI

@main
struct SwitUIBasicApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}
