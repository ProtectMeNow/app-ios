//
//  LoginView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 18/08/23.
//

import CustomTextField
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
                
                TextFieldView(viewModel: viewModel.emailFieldModel, value: viewModel.emailField)
                    .padding(.bottom, 27)
                TextFieldView(viewModel: viewModel.passwordFieldModel, value: viewModel.passwordField)
                    .padding(.bottom, 48)
                
                HStack {
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Text("Esqueceu Senha")
                            .font(.custom(type: .bjRegular, size: 17))
                            .foregroundColor(.custom(type: .customDarkTextGrey))
                    }
                }
                .padding(.bottom, 21)
                
                
                ButtonView(viewModel: viewModel.buttonViewModel, delegate: viewModel.self)
                .padding(.bottom, 26)
                
                HStack {
                    Text("Não tem conta?")
                        .font(.custom(type: .bjRegular, size: 17))
                        .foregroundColor(.custom(type: .customDarkTextGrey))
                    
                    Button("Cadastre-se") {
                        print("Clicou Cadastrar")
                    }
                }
                .padding(.bottom, 22)
                
                Text("ou".uppercased())
                    .font(.custom(type: .bjRegular, size: 17))
                    .foregroundColor(.custom(type: .customDarkTextGrey))
                    .padding(.bottom, 25)
                
                HStack {
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(type: .google)
                            .resizable()
                            .frame(width: 40, height: 40)
                    }
                    .padding(.horizontal, 8)

                    Button {
                        
                    } label: {
                        Image(type: .facebook)
                            .resizable()
                            .frame(maxWidth: 40, maxHeight: 40)
                    }
                    .padding(.horizontal, 8)
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
