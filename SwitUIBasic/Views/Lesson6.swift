//
//  Lesson6.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/27/25.
//

import SwiftUI

// stacks and layout

struct Lesson6: View {
    var body: some View {
        VStack(spacing: 20){
            Text("Number 1").font(.title)
            Text("Number 2").font(.title)
            Text("Number 3 ").font(.title)
        }
    }
}

#Preview {
    Lesson6c()
}


struct Lesson6b: View {
    var body: some View {
        HStack(){
            Text("Left").font(.title)
            Spacer()
            Text("Middle").font(.title)
            Spacer()
            Text("Right").font(.title)
        }
        .padding()
    }
}

struct Lesson6c: View {
    var body: some View {
        ZStack(){
            Circle()
                .fill(.blue)
                
            Text("Left")
                .font(.system(size: 48, weight: .heavy))
                // .bold()
                .foregroundStyle(.white)
                
            
        }
        .padding()
    }
}
