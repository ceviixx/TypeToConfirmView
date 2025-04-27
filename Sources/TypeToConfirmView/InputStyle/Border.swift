//
//  Border.swift
//  TypeToConfirmView
//
//  Created by ceviixx on 27.04.25.
//

import SwiftUI

/// A structure that defines the border styling for input elements,
/// including line width, color, and corner radius.
public struct Border {
    
    /// Creates a fully customized `Border`.
    ///
    /// - Parameters:
    ///   - lineWidth: The width of the border line.
    ///   - color: The color of the border.
    ///   - cornerRadius: The corner radius of the border.
    public init(
        lineWidth: CGFloat,
        color: Color,
        cornerRadius: CGFloat
    ) {
        self.lineWidth = lineWidth
        self.color = color
        self.cornerRadius = cornerRadius
    }
    
    /// Creates a default `Border` with no visible border and a standard corner radius.
    ///
    /// - Note: `lineWidth` is set to `0`, `color` is `.clear`, and `cornerRadius` is `10`.
    public init () {
        self.lineWidth = 0
        self.color = Color.clear
        self.cornerRadius = 10
    }
    
    /// Creates a `Border` with a custom line width and color, and a default corner radius.
    ///
    /// - Parameters:
    ///   - lineWidth: The width of the border line.
    ///   - color: The color of the border.
    /// - Note: `cornerRadius` defaults to `10`.
    public init(
        lineWidth: CGFloat,
        color: Color
    ) {
        self.lineWidth = lineWidth
        self.color = color
        self.cornerRadius = 10
    }
    
    /// Creates a `Border` with a custom corner radius and no visible border.
    ///
    /// - Parameter cornerRadius: The corner radius of the border.
    /// - Note: `lineWidth` is set to `0` and `color` is `.clear`.
    public init(
        cornerRadius: CGFloat
    ) {
        self.lineWidth = 0
        self.color = Color.clear
        self.cornerRadius = cornerRadius
    }
    
    /// The width of the border line.
    var lineWidth: CGFloat
    
    /// The color of the border.
    var color: Color
    
    /// The radius of the corners for the border.
    var cornerRadius: CGFloat
}
