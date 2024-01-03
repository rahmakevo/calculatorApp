//
//  Calculator.swift
//  CalculatorApp
//
//  Created by Kevin Wafula on 03/01/2024.
//

import Foundation

struct Calculator {
    
    // MARK: - PROPERTIES
    
    private var newNumber: Decimal?
    
    // MARK: - COMPUTED PROPERTIES
    
    private var number: Decimal? {
        return newNumber
    }
    
    var displaytext: String {
        return getNumberString(forNumber: number, withCommas: true)
    }
    
    // MARK: - OPERATIONS
    
    mutating func setDigit(_ digit: Digit) { 
        guard canAddDigit(digit) else { return }
        let numberString = getNumberString(forNumber: newNumber)
        newNumber = Decimal(string: numberString.appending("\(digit.rawValue)"))
    }
    
    mutating func setOperation(_ operation: ArithmeticOperation) { }
    
    mutating func toggleSign() { }
    
    mutating func setOperation() { }
    
    mutating func setDecimal() { }
    
    mutating func setPercent() { }
    
    mutating func evaluate() { }
    
    mutating func allClear() { }
    
    mutating func clear() { }
    
    // MARK: - HELPERS
    
    private func getNumberString(forNumber number: Decimal?, withCommas: Bool = false) -> String {
        return (withCommas ? number?.formatted(.number) : number.map(String.init)) ?? "0"
    }
    
    private func canAddDigit(_ digit: Digit) -> Bool {
        return number != nil || digit != .zero
    }
}
