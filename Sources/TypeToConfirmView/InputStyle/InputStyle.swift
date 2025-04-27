//
//  InputStyle.swift
//  TypeToConfirmView
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

/// A configuration structure that defines the visual appearance and border styling
/// for input elements such as text fields or custom input views.
public struct InputStyle {
    
    /// Creates a new `InputStyle` with custom appearance and border settings.
    ///
    /// - Parameters:
    ///   - apperance: The appearance configuration (e.g. colors, fonts).
    ///   - border: The border configuration (e.g. width, radius, color).
    public init(
        apperance: Apperance = .init(),
        border: Border = .init()
    ) {
        self.apperance = apperance
        self.border = border
    }
    
    /// Creates a default `InputStyle` using the default appearance and border settings.
    public init() {
        self.apperance = .init()
        self.border = .init()
    }
    
    /// Creates a new `InputStyle` with a custom appearance and a default border.
    ///
    /// - Parameter apperance: The appearance configuration.
    public init(
        apperance: Apperance
    ) {
        self.apperance = apperance
        self.border = .init()
    }
    
    /// Creates a new `InputStyle` with a custom border and a default appearance.
    ///
    /// - Parameter border: The border configuration.
    public init(
        border: Border
    ) {
        self.apperance = .init()
        self.border = border
    }
    
    /// The appearance settings for the input, such as colors and fonts.
    public var apperance: Apperance = .init()
    
    /// The border settings for the input, such as radius and stroke color.
    public var border: Border = .init()
}
