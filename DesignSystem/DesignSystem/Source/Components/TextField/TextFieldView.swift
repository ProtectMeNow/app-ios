//
//  TextFieldView.swift
//  DesignSystem
//
//  Created by Erik Santos on 18/08/23.
//

import CustomTextField
import SwiftUI

public typealias TextFieldViewModel = TextFieldView.ViewModel

public struct TextFieldView: View {
    
    @State var value: String
    
    @ObservedObject
    public var viewModel: ViewModel
    
    public var body: some View {
        EGTextField(text: $value)
            .setPlaceHolderText(viewModel.placeholder)
            .setBackgroundColor(.custom(type: .customLightGrey))
            .setPlaceHolderTextColor(.custom(type: .customDarkTextGrey))
            .keyboardType(viewModel.keyboardType)
            .padding(.horizontal, 5)
    }
    
    
    public init(viewModel: ViewModel, value: String) {
        self.viewModel = viewModel
        self.value = value
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = TextFieldView.ViewModel(placeholder: "Email", keyboardType: .emailAddress)
        TextFieldView(viewModel: vm, value: "Slaa")
    }
}

extension TextFieldView {
    public final class ViewModel: ObservableObject {
        
        public var placeholder: String
        
        public var keyboardType: UIKeyboardType
        
        public init(placeholder: String, keyboardType: UIKeyboardType = .default) {
            self.placeholder = placeholder
            self.keyboardType = keyboardType
        }
    }
}
