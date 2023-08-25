//
//  TabbedItems.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import DesignSystem
import Foundation

enum TabbedItems: Int, CaseIterable{
    case home = 0
    case Profile
    case exit
    
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .Profile:
            return "Perfil"
        case .exit:
            return "Sair"
        }
    }
    
    var iconName: ImageType{
        switch self {
        case .home:
            return .home
        case .Profile:
            return .profile
        case .exit:
            return .exit
        }
    }
}
