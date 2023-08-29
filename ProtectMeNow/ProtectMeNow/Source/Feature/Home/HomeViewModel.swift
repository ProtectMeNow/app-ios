//
//  HomeViewModel.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import DesignSystem
import Foundation

extension HomeView {
    final class ViewModel: ObservableObject {
        
        @Published
        var isToggleOn = true
        
        var profileImageWithNameViewModel: ProfileImageWithNameViewModel {
            ProfileImageWithNameViewModel(image: ImageType.profileMock.rawValue, name: "Erik Santos")
        }
        
        var modulesItemsViewModel: ModulesItemsViewModel {
            ModulesItemsViewModel(modules: ModulesItemsView.Mock.Modules)
        }
    }
}
