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
        switch conversionType {
        case .OZToLitre:
            result = round(Double(value) ?? 0) * 0.0295735
        case .litreToOZ:
            result = round(Double(value) ?? 0) * 33.814
        case .kgToPound:
            result = round(Double(value) ?? 0) * 2.20462
        case .poundToKg:
            result = round(Double(value) ?? 0) * 0.453592
        }
    }
}
