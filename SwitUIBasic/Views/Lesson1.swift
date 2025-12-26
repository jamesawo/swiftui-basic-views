//
//  Lesson1.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/26/25.
//

import SwiftUI

// intro to View

struct Lesson1: View {
    
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.largeTitle,)
            .fontWeight(.bold)
            .foregroundStyle(.blue)
    
    }
}

#Preview {
    Lesson1()
}
