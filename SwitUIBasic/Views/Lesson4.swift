//
//  Lesson4.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/26/25.
//

import SwiftUI

// sf symbols

struct Lesson4: View {
    var body: some View {
        iconSample()
    }
}

#Preview {
    Lesson4()
}

func iconSample() -> some View {
    Image(systemName: "star.fill")
        .font(.system(size: 60))
        .foregroundStyle(.teal)
}
