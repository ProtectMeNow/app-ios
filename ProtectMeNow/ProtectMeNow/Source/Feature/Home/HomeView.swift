//
//  HomeView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject
    var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            Color.custom(type: .customLightWhite)
            Text("Home")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = HomeView.ViewModel()
        HomeView()
            .environmentObject(vm)
    }
}
