//
//  CalculatorApp.swift
//  CalculatorApp
//
//  Created by Kevin Wafula on 03/01/2024.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView().environmentObject(CalculatorView.ViewModel())
        }
    }
}
