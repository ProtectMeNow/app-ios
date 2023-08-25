//
//  Font+Extensions.swift
//  DesignSystem
//
//  Created by Erik Santos on 18/08/23.
//

import SwiftUI

extension Font {
    public static func custom(type: FontType, size: CGFloat) -> Font {
        return Font.custom(type.rawValue, size: size)
    }
}

public enum FontType: String {
    case bjBold = "BaiJamjuree-Bold"
    case bjExtraLight = "BaiJamjuree-ExtraLight"
    case bjLight = "BaiJamjuree-Light"
    case bjMedium = "BaiJamjuree-Medium"
    case bjRegular = "BaiJamjuree-Regular"
    case bjSemiBold = "BaiJamjuree-SemiBold"
    
    case azBold = "AzeretMono-Bold"
    case azRegular = "AzeretMono-Regular"
    case azSemiBold = "AzeretMono-SemiBold"
}
