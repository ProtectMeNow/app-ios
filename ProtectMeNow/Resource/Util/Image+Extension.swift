//
//  Image+Extension.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 17/08/23.
//

import SwiftUI

extension Image {
    
    init(type: ImageType) {
        self = Image(type.rawValue)
    }
}

enum ImageType: String {
    case logo
}
