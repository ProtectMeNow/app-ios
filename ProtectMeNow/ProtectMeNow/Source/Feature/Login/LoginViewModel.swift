//
//  LoginViewModel.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 18/08/23.
//

import SwiftUI

extension LoginView {
    final class ViewModel: ObservableObject {
        
        @Published
        var screen: ScreenStatus = .loading
        
        @Published
        var emailField: String = ""
        
        @Published
        var passwordField: String = ""
    }
}
