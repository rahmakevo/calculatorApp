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
                size: getButtonSize(),
                backgroundColor: buttonType.backgroundColor,
                foregroundColor: buttonType.foregroundColor,
                isWide: buttonType == .digit(.zero)))
    }
    
    private func getButtonSize() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        let buttonCount: CGFloat = 4
        let spacingCount = buttonCount + 1
        return (screenWidth - (spacingCount * Constants.padding)) / buttonCount
    }
}

struct CalculatorButton_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorButton(buttonType: .digit(.five))
    }
}
