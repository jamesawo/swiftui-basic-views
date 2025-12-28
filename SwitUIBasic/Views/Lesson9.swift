//
//  Lesson9.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/28/25.
//

import SwiftUI

// animations
/*
 withAnimation {} -> animate state change
 .spring() -> bouncy, natural feeling
 .easeOut -> smooth acceleration
 rotation
 scale
 transition -> appear and disappear effect

 */
struct Lesson9: View {
    var body: some View {
        Text("Animation")
    }
}

#Preview {
    //SimpleAnimation()
    // SpringAnimation()
    //RotationAnimation()
    TransitionBasics()
}

func toggleScale(_ current: Double) -> Double {
    current == 1.0 ? 1.5 : 1.0
}

struct SimpleAnimation: View {
    @State private var scale = 1.0
    var body: some View {
        Circle()
            .fill(.blue)
            .frame(width: 100, height: 100)
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation {
                    scale = toggleScale(scale)
                }
            }

    }

}

struct SpringAnimation: View {
    @State private var scale = 1.0
    @State private var rotation = 0.0

    var body: some View {
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100)
            .scaleEffect(scale)
            .onTapGesture {
                withAnimation(.spring()) {
                    scale = toggleScale(scale)
                }
            }

    }

}

struct RotationAnimation: View {
    @State private var rotation = 0.0

    var body: some View {
        Circle()
            .fill(
                LinearGradient(
                    colors: [.pink, .purple, .red],
                    startPoint: .leading,
                    endPoint: .trailing
                )
            )
            .frame(width: 100, height: 100)
            .rotationEffect(.degrees(rotation))
            .onTapGesture {
                withAnimation(.spring()) {
                    rotation += 90
                }
            }

    }

}



struct TransitionBasics: View {
    @State private var visible = false
    
    var body: some View {
        
        if(visible){
            Circle()
                .frame(width: 100, height:100)
                .transition(.scale)
        }
        
        Button("toggle"){
            withAnimation {
                visible.toggle()
            }
        }
    }

}
