//
//  HomeView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import DesignSystem
import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject
    var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            Color.custom(type: .customLightWhite)
            VStack {
                ProfileImageWithNameView(viewModel: viewModel.profileImageWithNameViewModel)
                    .padding(.bottom, 0)
                makeBanner()
                ModulesItemsView(viewModel: viewModel.modulesItemsViewModel)
                    .padding(.bottom, 25)
                makeStatusPulseira()
                
                Spacer()
            }
            .padding()
        }
        
    }
    
    @ViewBuilder
    private func makeStatusPulseira() -> some View {
        HStack {

            Image(type: .pulseiraHand)
                .resizable()
                .frame(width: 34, height: 36)

            Spacer()

            Text("Status da pulseira".uppercased())
                .font(.custom(type: .bjSemiBold, size: 11))
            
            Spacer()
            Toggle(isOn: $viewModel.isToggleOn) {
                EmptyView()
            }
            .frame(maxWidth: 50)

        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .padding()
        .background(Color.white)
        .cornerRadius(20)
    }
    
    @ViewBuilder
    private func makeBanner() -> some View {
        Rectangle()
            .foregroundColor(.custom(type: .customLightHardBlue))
            .cornerRadius(5)
            .frame(height: 15)
            .padding(.bottom, .zero)
            .padding(.horizontal, 52)
            .offset(y: 30)
        
        Rectangle()
            .foregroundColor(.custom(type: .customLightMediumBlue))
            .cornerRadius(5)
            .frame(height: 15)
            .padding(.bottom, .zero)
            .padding(.horizontal, 42)
            .offset(y: 15)
        
   
        BannerContactView()
            .cornerRadius(10)
            .frame(height: 98)
            .padding(.bottom, 31)
            .padding(.horizontal, 30)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = HomeView.ViewModel()
        HomeView()
            .environmentObject(vm)
    }
}
