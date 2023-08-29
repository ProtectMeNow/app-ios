//
//  Color+Extensions.swift
//  DesignSystem
//
//  Created by Erik Santos on 21/08/23.
//

import SwiftUI

extension Color {
    public static func custom(type: ColorType) -> Color {
        return Color(type.rawValue)
    }
}

public enum ColorType: String {
    case customDarkGrey
    case customLightGrey
    case customDarkTextGrey
    case customCianoLightGreen
    case customLightWhite
    case customDarkBlue
    case customLightHardBlue
    case customLightMediumBlue
}
