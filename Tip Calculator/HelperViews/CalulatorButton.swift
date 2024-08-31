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
        Button {
            action()
        } label: {
            Text(title)
                .bold()
        }
        .padding(.all)
        .cornerRadius(3.0)
        .overlay {
            RoundedRectangle(cornerSize: CGSize(width: 30, height: 30), style: .circular)
                .stroke(style: StrokeStyle(lineWidth: 3.0))
                .foregroundColor(.blue)
        }
    }
}

#Preview {
    CalulatorButton(title: "1", action: {
        
    })
}
