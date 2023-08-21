//
//  TextFieldView.swift
//  DesignSystem
//
//  Created by Erik Santos on 18/08/23.
//

import CustomTextField
import SwiftUI

struct TextFieldView: View {
    
    @ObservedObject
    var viewModel: ViewModel
    
    var body: some View {
        EGTextField(text: $viewModel.value)
            .setPlaceHolderText(viewModel.placeholder)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = TextFieldView.ViewModel(placeholder: "Email")
        TextFieldView(viewModel: vm)
    }
}

extension TextFieldView {
    final class ViewModel: ObservableObject {
        @State var value: String = ""
        
        var placeholder: String
        
        init(placeholder: String) {
            self.placeholder = placeholder
        }
    }
}
