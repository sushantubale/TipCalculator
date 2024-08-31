//
//  ContentView.swift
//  Tip Calculator
//
//  Created by Sushant Ubale on 8/31/24.
//

import SwiftUI
import Combine

struct ContentView: View {
    @State var valueField: String = ""
    @ObservedObject private var viewModel = CalculatorViewModel()
    
    var body: some View {
        NavigationStack {
            HStack {
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
                        CalulatorButton(title: "1") {
                            valueField.append("1")
                        }
                        CalulatorButton(title: "2") {
                            valueField.append("2")
                        }
                        CalulatorButton(title: "3") {
                            valueField.append("3")
                        }
                        CalulatorButton(title: "+") {
                            valueField.append("+")
                        }
                    }
                    HStack(spacing: 20) {
                        CalulatorButton(title: "4") {
                            valueField.append("4")
                        }
                        CalulatorButton(title: "5") {
                            valueField.append("5")
                        }
                        CalulatorButton(title: "6") {
                            valueField.append("6")
                        }
                        CalulatorButton(title: "-") {
                            valueField.append("-")
                        }
                    }
                    HStack(spacing: 20) {
                        CalulatorButton(title: "7") {
                            valueField.append("7")
                        }
                        CalulatorButton(title: "8") {
                            valueField.append("8")
                        }
                        CalulatorButton(title: "9") {
                            valueField.append("9")
                        }
                        
                        CalulatorButton(title: "*") {
                            valueField.append("*")
                        }
                    }
                    HStack(spacing: 20) {
                        CalulatorButton(title: "0") {
                            valueField.append("0")
                        }
                        CalulatorButton(title: ".") {
                            valueField.append(".")
                        }
                        CalulatorButton(title: "=") {
                            viewModel.calculate(value: valueField)
                        }
                        CalulatorButton(title: "/") {
                            valueField.append("/")
                        }
                    }
                }
                .padding()
                .navigationTitle("Tip Calculator")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ContentView()
}
