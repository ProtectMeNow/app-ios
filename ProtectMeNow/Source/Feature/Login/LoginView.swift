//
//  LoginView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 17/08/23.
//

import SwiftUI

struct LoginView: View {
    
    @ObservedObject
    var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            switch viewModel.screen {
            case .loading:
                LounchScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            self.viewModel.screen = .normal
                        }
                    }
            case .normal:
                Text("normal")
            case .success:
                Text("success")
            case .error:
                Text("error")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginView.ViewModel())
    }
}
