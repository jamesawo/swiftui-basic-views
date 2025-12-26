//
//  Lesson2.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/26/25.
//

import SwiftUI

// Colors and Gradient

struct Lesson3: View {
    var body: some View {
        circularView()
        roundedRectangleView()
    }
    
}

func circularView() -> some View {
    Circle()
        .fill(
            RadialGradient(
                colors: [.purple, .pink],
                center: .center,
                startRadius: 0,
                endRadius: 100
            )
        )
        .frame(maxWidth: 200, maxHeight: 200)

}

func roundedRectangleView() -> some View {
    RoundedRectangle(
        cornerRadius: 8
    )
        .fill(
            LinearGradient(
                colors: [.cyan, .blue, .brown],
                startPoint: .leading,
                endPoint: .trailing
            )
        )
        .frame(maxWidth: 200, maxHeight: 200)
}

#Preview {
    Lesson3()
}
