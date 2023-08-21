//
//  LoginView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 18/08/23.
//

import DesignSystem
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
                    .padding(.horizontal, 36)
            case .normal:
                makeNormalView()
                    .padding(.horizontal, 36)
            case .success:
                Text("success")
            case .error:
                Text("error")
            }
        }
    }
    
    @ViewBuilder
    private func makeNormalView() -> some View {
        ScrollView(showsIndicators: false) {
            VStack {
                Image(type: .logo)
                    .padding(.top, 68)
                    .padding(.bottom, 51)
                
                
                
                TextField("Email", text: $viewModel.emailField)
                    .padding(.bottom, 27)
                TextField("Senha", text: $viewModel.passwordField)
                    .padding(.bottom, 48)
                
                HStack {
                    Spacer()
                    Text("Esqueceu Senha")
                }
                .padding(.bottom, 21)
                
                Button("Login") {
                    print("Clicou Entrar")
                }
                .padding(.bottom, 26)
                
                HStack {
                    Text("Não tem conta?")
                    Button("Cadastre-se") {
                        print("Clicou Cadastrar")
                    }
                }
                .padding(.bottom, 22)
                
                Text("ou".uppercased())
                    .padding(.bottom, 25)
                
                HStack {
                    Spacer()
                    Image(systemName: "square.and.arrow.up.circle.fill")
                    Image(systemName: "square.and.arrow.up.circle.fill")
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(viewModel: LoginView.ViewModel())
    }
}
