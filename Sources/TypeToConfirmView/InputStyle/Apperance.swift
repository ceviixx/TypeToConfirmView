//
//  Apperance.swift
//  TypeToConfirmView
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

/// A structure that defines the visual appearance of input elements,
/// such as foreground (text) and background colors.
public struct Apperance {
    
    /// Creates a default `Apperance` with system-defined colors.
    ///
    /// - Note: `foregroundColor` is set to `.primary`, and `backgroundColor` uses
    ///   `.secondarySystemGroupedBackground` for a subtle, native look.
    public init () {
        self.foregroundColor = .primary
        self.backgroundColor = Color(.secondarySystemGroupedBackground)
    }
    
    /// Creates a fully customized `Apperance`.
    ///
    /// - Parameters:
    ///   - foregroundColor: The text or foreground color.
    ///   - backgroundColor: The background color of the input.
    public init(
        foregroundColor: Color,
        backgroundColor: Color
    ) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = backgroundColor
    }
    
    /// Creates an `Apperance` with a custom foreground color and a default background color.
    ///
    /// - Parameter foregroundColor: The text or foreground color.
    /// - Note: `backgroundColor` defaults to `.secondarySystemGroupedBackground`.
    public init(
        foregroundColor: Color
    ) {
        self.foregroundColor = foregroundColor
        self.backgroundColor = Color(.secondarySystemGroupedBackground)
    }
    
    /// Creates an `Apperance` with a custom background color and a default foreground color.
    ///
    /// - Parameter backgroundColor: The background color of the input.
    /// - Note: `foregroundColor` defaults to `.primary`.
    public init(
        backgroundColor: Color
    ) {
        self.foregroundColor = .primary
        self.backgroundColor = backgroundColor
    }
    
    /// The foreground color, typically used for text.
    var foregroundColor: Color
    
    /// The background color of the input element.
    var backgroundColor: Color
}
