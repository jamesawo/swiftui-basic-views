//
//  Lesson5.swift
//  SwitUIBasic
//
//  Created by James Aworo on 12/27/25.
//

import SwiftUI

// Buttons and Actions

struct Lesson5: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        
        Button(action: updateCount){
            Text("Update Count \(counter)")
                .font(.largeTitle)
        }
        .padding()
        .background(.blue)
        .foregroundStyle(.white)
        .cornerRadius(20)
    }
    
    func updateCount() {
        print("button clicked")
        counter += 1
    }
}

#Preview {
    Lesson5()
}



struct Lesson5b: View {
    
    @State var countValue: Int = 0
    
    var body: some View {
        Button(
            "Update counter \(countValue)",
            action: {
                // passing countValue as a binding param
                incrementCountValue(value: $countValue)
            }
        )
        .font(.largeTitle)
        .buttonStyle(.bordered)
        .buttonBorderShape(.roundedRectangle)
        
    }
}

func incrementCountValue(value: Binding<Int>) {
    print("button clicked")
    value.wrappedValue += 1
}
