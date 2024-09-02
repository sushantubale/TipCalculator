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
            ZStack {
                // Background color
                LinearGradient(gradient: Gradient(colors: [Color.green.opacity(0.3), Color.blue.opacity(0.3)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center, spacing: 30) {
                    TextField("0.0", text: $valueField)
                        .disabled(true)
                        .padding()
                        .background(Color.white.opacity(0.2))
                        .cornerRadius(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(style: StrokeStyle(lineWidth: 2.0))
                                .foregroundColor(.blue)
                        }
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
                    
                    CalulatorButton(title: "Clear") {
                        valueField = ""
                    }
                    
                    VStack(spacing: 20) {
                        ForEach(0..<3) { row in
                            HStack(spacing: 20) {
                                ForEach(1..<4) { col in
                                    let number = row * 3 + col
                                    CalulatorButton(title: "\(number)") {
                                        valueField.append("\(number)")
                                    }
                                }
                            }
                        }
                        HStack(spacing: 20) {
                            CalulatorButton(title: "0") {
                                valueField.append("0")
                            }
                            CalulatorButton(title: ".") {
                                valueField.append(".")
                            }
                        }
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: [GridItem(.flexible())], spacing: 10) {
                            // Area
                            CalulatorButton(title: "Acres to Hectares") {
                                viewModel.calculate(value: valueField, conversionType: .acresToHectares)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Centimeters to Inches") {
                                viewModel.calculate(value: valueField, conversionType: .centimetersToInches)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Celsius to Fahrenheit") {
                                viewModel.calculate(value: valueField, conversionType: .celsiusToFahrenheit)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Celsius to Kelvin") {
                                viewModel.calculate(value: valueField, conversionType: .celsiusToKelvin)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Cups to Milliliters") {
                                viewModel.calculate(value: valueField, conversionType: .cupsToMilliliters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Fahrenheit to Celsius") {
                                viewModel.calculate(value: valueField, conversionType: .fahrenheitToCelsius)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Fahrenheit to Kelvin") {
                                viewModel.calculate(value: valueField, conversionType: .fahrenheitToKelvin)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Feet to Meters") {
                                viewModel.calculate(value: valueField, conversionType: .feetToMeters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Gallons to Liters") {
                                viewModel.calculate(value: valueField, conversionType: .gallonsToLiters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Gram to Kg") {
                                viewModel.calculate(value: valueField, conversionType: .gramToKg)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Hectares to Acres") {
                                viewModel.calculate(value: valueField, conversionType: .hectaresToAcres)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Hours to Minutes") {
                                viewModel.calculate(value: valueField, conversionType: .hoursToMinutes)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Hours to Seconds") {
                                viewModel.calculate(value: valueField, conversionType: .hoursToSeconds)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Inches to Centimeters") {
                                viewModel.calculate(value: valueField, conversionType: .inchesToCentimeters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kelvin to Celsius") {
                                viewModel.calculate(value: valueField, conversionType: .kelvinToCelsius)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kelvin to Fahrenheit") {
                                viewModel.calculate(value: valueField, conversionType: .kelvinToFahrenheit)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kg to Gram") {
                                viewModel.calculate(value: valueField, conversionType: .kgToGram)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kg to Milligram") {
                                viewModel.calculate(value: valueField, conversionType: .kgToMilligram)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kg to Pound") {
                                viewModel.calculate(value: valueField, conversionType: .kgToPound)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kilometers per Hour to Miles per Hour") {
                                viewModel.calculate(value: valueField, conversionType: .kilometersPerHourToMilesPerHour)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Liters to Gallons") {
                                viewModel.calculate(value: valueField, conversionType: .litersToGallons)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Litre to Oz") {
                                viewModel.calculate(value: valueField, conversionType: .litreToOZ)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Meters to Feet") {
                                viewModel.calculate(value: valueField, conversionType: .metersToFeet)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Miles per Hour to Kilometers per Hour") {
                                viewModel.calculate(value: valueField, conversionType: .milesPerHourToKilometersPerHour)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Milligram to Kg") {
                                viewModel.calculate(value: valueField, conversionType: .milligramToKg)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Milliliters to Cups") {
                                viewModel.calculate(value: valueField, conversionType: .millilitersToCups)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Minutes to Hours") {
                                viewModel.calculate(value: valueField, conversionType: .minutesToHours)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Minutes to Seconds") {
                                viewModel.calculate(value: valueField, conversionType: .minutesToSeconds)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Oz to Litre") {
                                viewModel.calculate(value: valueField, conversionType: .OZToLitre)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Pound to Kg") {
                                viewModel.calculate(value: valueField, conversionType: .poundToKg)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Seconds to Hours") {
                                viewModel.calculate(value: valueField, conversionType: .secondsToHours)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Seconds to Minutes") {
                                viewModel.calculate(value: valueField, conversionType: .secondsToMinutes)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Square Feet to Square Meters") {
                                viewModel.calculate(value: valueField, conversionType: .squareFeetToSquareMeters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Square Meters to Square Feet") {
                                viewModel.calculate(value: valueField, conversionType: .squareMetersToSquareFeet)
                                valueField = String(viewModel.result)
                            }
                        }
                    }

                    NavigationLink(destination: CurrencyConverter()) {
                        Text("Currency Converter")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]),
                                                       startPoint: .leading,
                                                       endPoint: .trailing))
                            .cornerRadius(10)
                            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)
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

