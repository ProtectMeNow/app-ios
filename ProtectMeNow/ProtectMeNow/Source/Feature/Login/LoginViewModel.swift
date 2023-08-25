//
//  LoginViewModel.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 18/08/23.
//

import DesignSystem
import SwiftUI

extension LoginView {
    
    enum LoginViewActionType {
        case forgotPassword
        case register
        case google
        case facebook
    }
    
    final class ViewModel: ObservableObject {
        
        @Published
        var screen: ScreenStatus = .loading
        
        @Published
        var emailField: String = ""
        
        @Published
        var passwordField: String = ""
        
        var emailFieldModel: TextFieldViewModel {
            TextFieldViewModel(placeholder: "Email", keyboardType: .emailAddress)
        }
        
        var passwordFieldModel: TextFieldViewModel {
            TextFieldViewModel(placeholder: "Senha")
        }
        
        var buttonViewModel: ButtonViewModel {
            ButtonViewModel(text: "Login".uppercased(), textColor: .white, background: .custom(type: .customCianoLightGreen))
        }
    }
    
//    private func didTapAction(type: LoginViewActionType) {
//        switch type {
//        case .forgotPassword:
//            print("")
//        case .register:
//            <#code#>
//        case .google:
//            <#code#>
//        case .facebook:
//            <#code#>
//        }
//    }
}

extension LoginView.ViewModel: ButtonViewDelegate {
    func didTapButton() {
        
    }
}
