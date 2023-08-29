//
//  Image+Extensions.swift
//  DesignKit
//
//  Created by Erik Santos on 18/08/23.
//

import SwiftUI

extension Image {
    
    public init(type: ImageType) {
        self = Image(type.rawValue)
    }
}

public enum ImageType: String {
    case logo
    case facebook
    case google
    case home
    case profile
    case exit
    case profileMock
    case myAccountProfile
    case warningLocation
    case history
    case pulseiraHand
    case phoneContact
}

