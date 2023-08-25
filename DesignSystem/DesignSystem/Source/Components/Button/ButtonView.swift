//
//  ButtonView.swift
//  DesignSystem
//
//  Created by Erik Santos on 21/08/23.
//

import SwiftUI

public typealias ButtonViewModel = ButtonView.ViewModel

public protocol ButtonViewDelegate: AnyObject {
    func didTapButton()
}

public struct ButtonView: View {
    
    public var viewModel: ViewModel
    
    private weak var delegate: ButtonViewDelegate?
    
    public var body: some View {
        Button {
            delegate?.didTapButton()
        } label: {
            
            ZStack {
                Text(viewModel.text)
                    .font(.custom(type: .azBold, size: 18))
                    .frame(maxWidth: .infinity)
                    .foregroundColor(viewModel.textColor)
            }
        }
        .tint(viewModel.background)
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
    
    public init(viewModel: ViewModel, delegate: ButtonViewDelegate?) {
        self.viewModel = viewModel
        self.delegate = delegate
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ButtonViewModel(text: "Login", textColor: .white, background: .green)
        ButtonView(viewModel: vm, delegate: nil)
    }
}

extension ButtonView {
    public final class ViewModel: ObservableObject {
        public let text: String
        public let textColor: Color
        public let background: Color
        
        public init(text: String, textColor: Color, background: Color) {
            self.text = text
            self.textColor = textColor
            self.background = background
        }
    }
}
