//
//  CalulatorButton.swift
//  Tip Calculator
//
//  Created by Sushant Ubale on 8/31/24.
//

import SwiftUI

struct CalulatorButton: View {
    var title: String
    var action: () -> ()
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(.white)
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]),
                                           startPoint: .top,
                                           endPoint: .bottom))
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
        }
    }
}


#Preview {
    CalulatorButton(title: "1", action: {
        
    })
}
