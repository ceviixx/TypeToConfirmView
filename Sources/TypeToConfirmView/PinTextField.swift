//
//  PinTextField.swift
//  TypeToConfirmView
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

internal struct PinTextField: View {
    @Binding var text: String
    @FocusState.Binding var isFocused: TypeToConfirmView.FocusPin?
    let index: Int
    let totalCount: Int
    let onChange: (Int, String) -> Void
    let modifier: SingleInputModifier

    var body: some View {
        TextField("", text: $text)
            .multilineTextAlignment(.center)
            .modifier(modifier)
            .focused($isFocused, equals: .pin(index))
            .onChange(of: text) { _, newValue in
                onChange(index, newValue)
            }
            
    }
}
