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
            HStack() {
                VStack(alignment: .center, spacing: 30) {
                    TextField("0.0", text: $valueField)
                        .disabled(true)
                        .padding()
                        .cornerRadius(3.0)
                        .overlay {
                            RoundedRectangle(cornerSize: CGSize(width: 20, height: 20), style: .circular)
                                .stroke(style: StrokeStyle(lineWidth: 3.0))
                                .foregroundColor(.blue)
                        }
                        .foregroundColor(.blue)
                    CalulatorButton(title: "Clear") {
                        valueField = ""
                    }
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
                    }
                    HStack(spacing: 20) {
                        CalulatorButton(title: "0") {
                            valueField.append("0")
                        }
                        Button {
                            valueField.append(".")
                        } label: {
                            Text(".")
                                .bold()
                        }
                        .padding(.all)
                        .frame(width: 40, height: 50)
                        .cornerRadius(3.0)
                        .overlay {
                            RoundedRectangle(cornerSize: CGSize(width: 40, height: 40), style: .circular)
                                .stroke(style: StrokeStyle(lineWidth: 3.0))
                                .foregroundColor(.blue)
                        }
                    }

                    ScrollView(.horizontal) {
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                            CalulatorButton(title: "Oz to Litre") {
                                viewModel.calculate(value: valueField, conversionType: .OZToLitre)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Litre to Oz") {
                                viewModel.calculate(value: valueField, conversionType: .litreToOZ)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Pound to Kg") {
                                viewModel.calculate(value: valueField, conversionType: .poundToKg)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kg to Pound") {
                                viewModel.calculate(value: valueField, conversionType: .kgToPound)
                                valueField = String(viewModel.result)
                            }
                        }
                    }
                }
                .padding()
                .navigationTitle("Easy Converter")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ContentView()
}
