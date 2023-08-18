//
//  LoginViewModel.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 17/08/23.
//

import SwiftUI

extension LoginView {
    final class ViewModel: ObservableObject {
        
        @Published
        var screen: ScreenStatus = .loading
    }
}
