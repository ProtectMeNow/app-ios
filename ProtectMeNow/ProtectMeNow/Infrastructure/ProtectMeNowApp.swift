//
//  ProtectMeNowApp.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 18/08/23.
//

import CustomTextField
import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}

@main
struct ProtectMeNowApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    init() {
        let customTextField = EGTextFieldConfig.shared
        
        customTextField.defaultTextColor = .black
        customTextField.darkModeTextColor = .white
        customTextField.defaultTitleColor = .custom(type: .customDarkTextGrey)
        customTextField.darkModeTitleColor = .custom(type: .customDarkTextGrey)
        customTextField.titleFont = .custom(type: .bjSemiBold, size: 17)
        customTextField.placeHolderFont = .custom(type: .bjSemiBold, size: 17)
    }
    
    var body: some Scene {
        WindowGroup {
            let viewModel = TabBarView.ViewModel()
            TabBarView(viewModel: viewModel)
        }
    }
}
