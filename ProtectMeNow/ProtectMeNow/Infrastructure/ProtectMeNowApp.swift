//
//  ProtectMeNowApp.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 18/08/23.
//

import CustomTextField
import SwiftUI

@main
struct ProtectMeNowApp: App {
    
    init() {
        let customTextField = EGTextFieldConfig.shared

        customTextField.placeHolderFont = .custom(type: .bjSemiBold, size: 17)
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView(viewModel: LoginView.ViewModel())
        }
    }
}
