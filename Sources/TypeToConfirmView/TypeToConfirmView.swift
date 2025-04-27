//
//  SwiftUIView.swift
//  TypeToConfirmView
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

public struct TypeToConfirmView: View {
    @State public var value: String

    @FocusState private var pinFocusState: FocusPin?
    @State private var pins: [String]
    @State private var inputString: String = ""

    @Binding var isValid: Bool
    var clearFocusAfterLastDigit: Bool

    var inputStyle: InputStyle = .init()
    
    public init(
        value: String,
        isValid: Binding<Bool>,
        clearFocusAfterLastDigit: Bool = false,
        inputStyle: InputStyle = .init()
    ) {
        self.value = value
        self._pins = State(initialValue: Array(repeating: "", count: value.count))
        self._isValid = isValid
        self.clearFocusAfterLastDigit = clearFocusAfterLastDigit
    }
    
    public init(
        value: String,
        isValid: Binding<Bool>
    ) {
        self.value = value
        self._pins = State(initialValue: Array(repeating: "", count: value.count))
        self._isValid = isValid
        self.clearFocusAfterLastDigit = false
    }
    
    public init(
        value: String,
        isValid: Binding<Bool>,
        inputStyle: InputStyle
    ) {
        self.value = value
        self._pins = State(initialValue: Array(repeating: "", count: value.count))
        self._isValid = isValid
        self.clearFocusAfterLastDigit = false
        self.inputStyle = inputStyle
    }
    

    enum FocusPin: Hashable {
        case pin(Int)
    }

    public var body: some View {
        HStack {
            ForEach(pins.indices, id: \.self) { idx in
                PinTextField(
                    text: $pins[idx],
                    isFocused: $pinFocusState,
                    index: idx,
                    totalCount: value.count,
                    onChange: handleChange,
                    modifier: SingleInputModifier(pin: $pins[idx], inputStyle: inputStyle),
                )
            }
        }
        .padding(.horizontal)
    }

    private func handleChange(index: Int, newValue: String) {
        if newValue.count == 1 {
            if index < value.count - 1 {
                pinFocusState = .pin(index + 1)
            } else if clearFocusAfterLastDigit {
                pinFocusState = nil
            }
        } else if newValue.count == value.count {
            inputString = newValue
            updatePinsFromOTP()
            pinFocusState = .pin(value.count - 1)
        } else if newValue.isEmpty, index > 0 {
            pinFocusState = .pin(index - 1)
        }

        updateOTPString()
    }

    private func updatePinsFromOTP() {
        let otpArray = Array(inputString.prefix(value.count))
        for (index, char) in otpArray.enumerated() {
            pins[index] = String(char)
        }
    }

    private func updateOTPString() {
        inputString = pins.joined()
        isValid = (inputString == value)
    }
}
