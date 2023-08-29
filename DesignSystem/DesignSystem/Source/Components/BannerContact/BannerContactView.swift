//
//  BannerContactView.swift
//  DesignSystem
//
//  Created by Erik Santos on 29/08/23.
//

import SwiftUI

public struct BannerContactView: View {
    public var body: some View {
        ZStack(alignment: .leading) {
            
    
            Color.custom(type: .customDarkBlue)
            HStack {
                Spacer()
                Image(type: .phoneContact)
                    .resizable()
                    .frame(width: 43, height: 40)
                    .padding(.trailing, 24)
                    .offset(y: -15)
            }
            
            VStack(alignment: .leading) {
                Text("Contatos de Emergência".uppercased())
                    .foregroundColor(.white)
                    .font(.custom(type: .bjSemiBold, size: 17))
                
                Text("Cadastre aqui seus contatos de emergencia para \n ajuda-lo.")
                    .foregroundColor(.white)
                    .font(.custom(type: .bjRegular, size: 10))
                    .multilineTextAlignment(.leading)
            }
            .padding()
        }
    }
    
    
    public init() { }
}

struct BannerContactView_Previews: PreviewProvider {
    static var previews: some View {
        BannerContactView()
    }
}
