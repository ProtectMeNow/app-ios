//
//  TabBarViewModel.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import SwiftUI

typealias HomeViewModel = HomeView.ViewModel
typealias ProfileViewModel = ProfileView.ViewModel

extension TabBarView {
    final class ViewModel: ObservableObject {
        
        @Published
        var homeViewModel: HomeViewModel
        
        @Published
        var profileViewModel: ProfileViewModel
        
        init() {
            self.homeViewModel = HomeViewModel()
            self.profileViewModel = ProfileViewModel()
        }
    }
}
