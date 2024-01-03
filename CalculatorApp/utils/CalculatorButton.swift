//
//  CalculatorButton.swift
//  CalculatorApp
//
//  Created by Kevin Wafula on 03/01/2024.
//

import SwiftUI

struct CalculatorButton: View {
    let buttonType: ButtonType
    
    var body: some View {
        Button(buttonType.description) { }
        
            .buttonStyle(CalculatorButtonStyle(
                size: 80,
                backgroundColor: buttonType.backgroundColor,
                foregroundColor: buttonType.foregroundColor))
    }
}

struct CalculatorButton_Preview: PreviewProvider {
    static var previews: some View {
        CalculatorButton(buttonType: .digit(.five))
    }
}
