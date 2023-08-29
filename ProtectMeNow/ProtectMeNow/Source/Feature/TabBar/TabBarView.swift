//
//  TabBarView.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 24/08/23.
//

import DesignSystem
import SwiftUI

struct TabBarView: View {
    
    @State var selectedTab = 0
    
    @ObservedObject
    var viewModel: ViewModel
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tag(0)
                    .environmentObject(viewModel.homeViewModel)
                
                ProfileView()
                    .tag(1)
                    .environmentObject(viewModel.profileViewModel)
                
                ProfileView()
                    .tag(2)
                    .environmentObject(viewModel.profileViewModel)
            }
            
            
            ZStack{
                VStack {
                    HStack{
                        ForEach((TabbedItems.allCases), id: \.self){ item in
                            Button{
                                selectedTab = item.rawValue
                            } label: {
                                CustomTabItem(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                            }
                        }
                    }
                    .padding(6)
                }
            }
            .frame(height: 70)
            .background(Color.white)
            .cornerRadius(20, corners: [.topLeft, .topRight])
        }
    }
}


struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = TabBarView.ViewModel()
        TabBarView(viewModel: vm)
    }
}


extension TabBarView{
    func CustomTabItem(imageName: ImageType, title: String, isActive: Bool) -> some View{
        HStack {
            Spacer()
            Image(type: imageName)
                .resizable()
                .renderingMode(.template)
                .foregroundColor(isActive ? .black : .gray)
                .frame(width: 50, height: 50)
            
            if isActive {
                Text(title)
                    .font(.custom(type: .bjSemiBold, size: 14))
                    .foregroundColor(isActive ? .black : .gray)
            }
            Spacer()
        }
        .cornerRadius(30)
    }
}
