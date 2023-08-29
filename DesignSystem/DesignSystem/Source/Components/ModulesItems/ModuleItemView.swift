//
//  ModuleItemView.swift
//  DesignSystem
//
//  Created by Erik Santos on 29/08/23.
//

import SwiftUI

struct ModuleItemView: View {
    
    var module: ModuleItem
    
    var body: some View {
        HStack {
            Spacer()
            Text(module.name.uppercased())
                .font(.custom(type: .bjSemiBold, size: 11))
                .fixedSize()
                .frame(width: 100)
            
            Spacer()
            Image(type: module.image)
                .resizable()
                .frame(width: 30, height: 34)
            Spacer()
        }
        .padding()
        .background(module.isActive ? Color.white : Color.custom(type: .customDarkGrey))
        .opacity(module.isActive ? 1 : 0.5)
    }
}

struct ModuleItemView_Previews: PreviewProvider {
    static var previews: some View {
        ModuleItemView(module: .init(name: "Minha Conta", image: .myAccountProfile, isActive: true))
    }
}
