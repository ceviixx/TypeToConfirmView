//
//  SingleInputModifier.swift
//  TypeToConfirmView
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI
import Combine







struct SingleInputModifier: ViewModifier {
    @Binding var pin: String
    
    public var inputStyle: InputStyle = .init()
    
    var textLimit = 1
    
    func limitText(_ upper: Int) {
        if pin.count > upper {
            self.pin = String(pin.prefix(upper))
        }
    }
    
    func body(content: Content) -> some View {
        content
            .textCase(.uppercase)
            .padding()
            .multilineTextAlignment(.center)
            .keyboardType(.asciiCapable)
            .disableAutocorrection(true)
            .autocapitalization(.allCharacters)
            .onReceive(Just(pin)) { _ in limitText(textLimit) }
            .font(.system(size: 16))
            .foregroundStyle(inputStyle.apperance.foregroundColor)
            .fontWeight(.semibold)
            .background(
                RoundedRectangle(cornerRadius: inputStyle.border.cornerRadius)
                    .fill(inputStyle.apperance.backgroundColor)
                    .stroke(inputStyle.border.color, lineWidth: inputStyle.border.lineWidth)
            )
    }
}
