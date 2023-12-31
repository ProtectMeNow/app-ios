//
//  ProfileView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import DesignSystem
import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject
    var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            Color.custom(type: .customLightWhite)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
