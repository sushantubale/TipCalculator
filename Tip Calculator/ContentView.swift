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
                            
                            // Length
                            CalulatorButton(title: "Miles to Kilometers") {
                                viewModel.calculate(value: valueField, conversionType: .milesToKilometers)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kilometers to Miles") {
                                viewModel.calculate(value: valueField, conversionType: .kilometersToMiles)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Inches to Centimeters") {
                                viewModel.calculate(value: valueField, conversionType: .inchesToCentimeters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Centimeters to Inches") {
                                viewModel.calculate(value: valueField, conversionType: .centimetersToInches)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Feet to Meters") {
                                viewModel.calculate(value: valueField, conversionType: .feetToMeters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Meters to Feet") {
                                viewModel.calculate(value: valueField, conversionType: .metersToFeet)
                                valueField = String(viewModel.result)
                            }
                            
                            // Temperature
                            CalulatorButton(title: "Celsius to Fahrenheit") {
                                viewModel.calculate(value: valueField, conversionType: .celsiusToFahrenheit)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Fahrenheit to Celsius") {
                                viewModel.calculate(value: valueField, conversionType: .fahrenheitToCelsius)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Celsius to Kelvin") {
                                viewModel.calculate(value: valueField, conversionType: .celsiusToKelvin)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kelvin to Celsius") {
                                viewModel.calculate(value: valueField, conversionType: .kelvinToCelsius)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Fahrenheit to Kelvin") {
                                viewModel.calculate(value: valueField, conversionType: .fahrenheitToKelvin)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kelvin to Fahrenheit") {
                                viewModel.calculate(value: valueField, conversionType: .kelvinToFahrenheit)
                                valueField = String(viewModel.result)
                            }
                            
                            // Area
                            CalulatorButton(title: "Square Feet to Square Meters") {
                                viewModel.calculate(value: valueField, conversionType: .squareFeetToSquareMeters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Square Meters to Square Feet") {
                                viewModel.calculate(value: valueField, conversionType: .squareMetersToSquareFeet)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Acres to Hectares") {
                                viewModel.calculate(value: valueField, conversionType: .acresToHectares)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Hectares to Acres") {
                                viewModel.calculate(value: valueField, conversionType: .hectaresToAcres)
                                valueField = String(viewModel.result)
                            }
                            
                            // Volume
                            CalulatorButton(title: "Gallons to Liters") {
                                viewModel.calculate(value: valueField, conversionType: .gallonsToLiters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Liters to Gallons") {
                                viewModel.calculate(value: valueField, conversionType: .litersToGallons)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Cups to Milliliters") {
                                viewModel.calculate(value: valueField, conversionType: .cupsToMilliliters)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Milliliters to Cups") {
                                viewModel.calculate(value: valueField, conversionType: .millilitersToCups)
                                valueField = String(viewModel.result)
                            }
                            
                            // Speed
                            CalulatorButton(title: "Miles per Hour to Kilometers per Hour") {
                                viewModel.calculate(value: valueField, conversionType: .milesPerHourToKilometersPerHour)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Kilometers per Hour to Miles per Hour") {
                                viewModel.calculate(value: valueField, conversionType: .kilometersPerHourToMilesPerHour)
                                valueField = String(viewModel.result)
                            }
                            
                            // Currency
                            // (Implementation for currency conversions will depend on your API integration)
                            
                            // Time
                            CalulatorButton(title: "Hours to Minutes") {
                                viewModel.calculate(value: valueField, conversionType: .hoursToMinutes)
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
                            CalulatorButton(title: "Seconds to Minutes") {
                                viewModel.calculate(value: valueField, conversionType: .secondsToMinutes)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Hours to Seconds") {
                                viewModel.calculate(value: valueField, conversionType: .hoursToSeconds)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Seconds to Hours") {
                                viewModel.calculate(value: valueField, conversionType: .secondsToHours)
                                valueField = String(viewModel.result)
                            }
                            
                            // Your existing conversions
                            CalulatorButton(title: "Gram to Kg") {
                                viewModel.calculate(value: valueField, conversionType: .gramToKg)
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
                            CalulatorButton(title: "Litre to Oz") {
                                viewModel.calculate(value: valueField, conversionType: .litreToOZ)
                                valueField = String(viewModel.result)
                            }
                            CalulatorButton(title: "Milligram to Kg") {
                                viewModel.calculate(value: valueField, conversionType: .milligramToKg)
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

