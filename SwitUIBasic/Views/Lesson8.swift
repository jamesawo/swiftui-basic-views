//
//  Lesson8.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/27/25.
//

import SwiftUI

// State & Binding

/*
 @State - own and store the data
 @Binding - connects to someone else's data
 @variable - create binding from state
 */

struct Lesson8: View {
    var body: some View {
        Text("state and binding")
    }
}

#Preview {
    ToogleView()
}

struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("counter: \(count)").font(.largeTitle)

            Button("increment") {
                count += 1
            }
        }
    }
}

struct ToogleView: View {
    @State private var isOn = false

    var body: some View {
        Toggle("dark mode", isOn: $isOn)
            .padding(10)
    }
}
