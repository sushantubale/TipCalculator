//
//  ConversionTypes.swift
//  Tip Calculator
//
//  Created by Sushant Ubale on 8/31/24.
//

import Foundation

enum ConversionType {
    // Existing conversions
    case OZToLitre, litreToOZ, kgToPound, poundToKg
    case kgToGram, gramToKg, kgToMilligram, milligramToKg

    // Length
    case milesToKilometers, kilometersToMiles
    case inchesToCentimeters, centimetersToInches
    case feetToMeters, metersToFeet

    // Temperature
    case celsiusToFahrenheit, fahrenheitToCelsius
    case celsiusToKelvin, kelvinToCelsius
    case fahrenheitToKelvin, kelvinToFahrenheit

    // Area
    case squareFeetToSquareMeters, squareMetersToSquareFeet
    case acresToHectares, hectaresToAcres

    // Volume
    case gallonsToLiters, litersToGallons
    case cupsToMilliliters, millilitersToCups

    // Speed
    case milesPerHourToKilometersPerHour, kilometersPerHourToMilesPerHour

    // Currency
    // You'll likely need cases for each currency pair you support
    // (e.g., USDToEUR, EURToJPY, etc.)

    // Time
    case hoursToMinutes, minutesToHours
    case minutesToSeconds, secondsToMinutes
    case hoursToSeconds, secondsToHours
    // Time zone conversions might require a different approach
    // (e.g., storing time zones as strings or using a dedicated struct)
}
