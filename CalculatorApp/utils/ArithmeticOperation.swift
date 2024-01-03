//
//  ArithmeticOperation.swift
//  CalculatorApp
//
//  Created by Kevin Wafula on 03/01/2024.
//

import Foundation

enum ArithmeticOperation: CaseIterable, CustomStringConvertible, Hashable {
    
    
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
