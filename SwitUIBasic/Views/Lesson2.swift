//
//  Lesson2.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/26/25.
//

import SwiftUI

// Text and Typography

struct Lesson2: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(
                .system(
                    size: 42,
                    weight: .heavy,
                    design: .rounded
                )
            )
            
            .foregroundStyle(
                LinearGradient(
                    colors: [.purple, .pink],
                    startPoint: .leading, endPoint: .trailing
                )
            )
    }
}

#Preview {
    Lesson2()
}
