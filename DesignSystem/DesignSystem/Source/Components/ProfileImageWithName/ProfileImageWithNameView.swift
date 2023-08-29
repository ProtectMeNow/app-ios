//
//  ProfileImageWithNameView.swift
//  DesignSystem
//
//  Created by Erik Santos on 29/08/23.
//

import SwiftUI

public typealias ProfileImageWithNameViewModel = ProfileImageWithNameView.ViewModel
public struct ProfileImageWithNameView: View {
    
    public let viewModel: ViewModel
    
    public var body: some View {
        HStack() {
            
            Image(viewModel.image)
                .resizable(resizingMode: .stretch)
                .frame(width: 66, height: 81)
                .background(Color.custom(type: .customDarkGrey))
                .clipShape(Circle())
            
            
            Text("Olá, \(viewModel.name)!")
                .font(.custom(type: .bjSemiBold, size: 20))
            
            Spacer()
        }
    }
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
}

struct ProfileImageWithNameView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ProfileImageWithNameView.ViewModel(image: ImageType.profileMock.rawValue, name: "Erik Santos")
        ProfileImageWithNameView(viewModel: vm)
    }
}

extension ProfileImageWithNameView {
    public final class ViewModel {
        public let image: String
        public let name: String
        
        public init(image: String, name: String) {
            self.image = image
            self.name = name
        }
    }
}
