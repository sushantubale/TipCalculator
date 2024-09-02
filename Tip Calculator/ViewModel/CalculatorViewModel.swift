//
//  CalculatorViewModel.swift
//  Tip Calculator
//
//  Created by Sushant Ubale on 8/31/24.
//

import SwiftUI
import Combine

class CalculatorViewModel: ObservableObject {
    @Published var result: Double = 0.0
    
    func calculate(value: String, conversionType: ConversionType) {
        guard let convertedValue = (Double(value)) else {
            result = 0.0
            return
        }

        var doubleValue = round(convertedValue)

        switch conversionType {
        case .OZToLitre:
            result = doubleValue * 0.0295735
        case .litreToOZ:
            result = doubleValue * 33.814
        case .kgToPound:
            result = doubleValue * 2.20462
        case .poundToKg:
            result = doubleValue * 0.453592
        case .kgToGram:
            result = (Double(value) ?? 0) * 1000
        case .gramToKg:
            result = (Double(value) ?? 0) / 1000
        case .kgToMilligram:
            result = (Double(value) ?? 0) * 1000000
        case .milligramToKg:
            result = (Double(value) ?? 0) / 1000000
            
            // Length
        case .milesToKilometers:
            result = doubleValue * 1.60934
        case .kilometersToMiles:
            result = doubleValue / 1.60934
        case .inchesToCentimeters:
            result = doubleValue * 2.54
        case .centimetersToInches:
            result = doubleValue / 2.54
        case .feetToMeters:
            result = doubleValue * 0.3048
        case .metersToFeet:
            result = doubleValue / 0.3048
            
            // Temperature
        case .celsiusToFahrenheit:
            result = (doubleValue * 9/5) + 32
        case .fahrenheitToCelsius:
            result = (doubleValue - 32) * 5/9
        case .celsiusToKelvin:
            result = doubleValue + 273.15
        case .kelvinToCelsius:
            result = doubleValue - 273.15
        case .fahrenheitToKelvin:
            result = ((doubleValue - 32) * 5/9) + 273.15
        case .kelvinToFahrenheit:
            result = ((doubleValue - 273.15) * 9/5) + 32
            
            // Area
        case .squareFeetToSquareMeters:
            result = doubleValue * 0.092903
        case .squareMetersToSquareFeet:
            result = doubleValue / 0.092903
        case .acresToHectares:
            result = doubleValue * 0.404686
        case .hectaresToAcres:
            result = doubleValue / 0.404686
            
            // Volume
        case .gallonsToLiters:
            result = doubleValue * 3.78541
        case .litersToGallons:
            result = doubleValue / 3.78541
        case .cupsToMilliliters:
            result = doubleValue * 236.588
        case .millilitersToCups:
            result = doubleValue / 236.588
            
            // Speed
        case .milesPerHourToKilometersPerHour:
            result = doubleValue * 1.60934
        case .kilometersPerHourToMilesPerHour:
            result = doubleValue / 1.60934
            
            // Currency
            // You'll need to implement this using an API to fetch real-time rates
            
            // Time
        case .hoursToMinutes:
            result = doubleValue * 60
        case .minutesToHours:
            result = doubleValue / 60
        case .minutesToSeconds:
            result = doubleValue * 60
        case .secondsToMinutes:
            result = doubleValue / 60
        case .hoursToSeconds:
            result = doubleValue * 3600
        case .secondsToHours:
            result = doubleValue / 3600            
        }
    }
}
