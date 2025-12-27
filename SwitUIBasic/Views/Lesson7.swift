//
//  Lesson7.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/27/25.
//

import SwiftUI

// List & Navigations

struct Lesson7: View {
    var body: some View {
        List(){
            Label("Default", systemImage: "heart")
            Label("Fill", systemImage: "heart.fill")
            Label("Circle", systemImage: "heart.circle")
            Label("Circle Fill", systemImage: "heart.circle.fill")
        
        }
    }
}

#Preview {
    Lesson7()
}
