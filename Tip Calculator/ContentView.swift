//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Sushant Ubale on 8/31/24.
//

import SwiftUI

struct ContentView: View {
    @State var valueField: String = ""
        
    var body: some View {
        NavigationStack {
            VStack(alignment: .center, spacing: 30) {
                TextField("0.0", text: $valueField)
                    .padding()
                    .cornerRadius(3.0)
                    .overlay {
                        RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .circular)
                            .stroke(style: StrokeStyle(lineWidth: 3.0))
                            .foregroundColor(.blue)
                    }
                    .foregroundColor(.blue)
                HStack(spacing: 20) {
                    CalulatorButton(title: "1")
                    CalulatorButton(title: "2")
                    CalulatorButton(title: "3")
                }
                HStack(spacing: 20) {
                    CalulatorButton(title: "4")
                    CalulatorButton(title: "5")
                    CalulatorButton(title: "6")
                }
                HStack(spacing: 20) {
                    CalulatorButton(title: "7")
                    CalulatorButton(title: "8")
                    CalulatorButton(title: "9")
                }
            }
            .padding()
            .navigationTitle("Tip Calculator")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
