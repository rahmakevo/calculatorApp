//
//  CalculatorView.swift
//  CalculatorApp
//
//  Created by Kevin Wafula on 03/01/2024.
//

import SwiftUI

struct CalculatorView: View {
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Spacer()
            displayText
            buttonPad
        }
        .padding(Constants.padding)
        .background(Color.black)
    }
}


extension CalculatorView {
    private var displayText: some View {
        Text(viewModel.displayText)
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    private var buttonPad: some View {
        VStack {
            ForEach(viewModel.buttonTypes, id: \.self) { row in
                HStack {
                    ForEach(row, id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView().environmentObject(CalculatorView.ViewModel())
    }
}
