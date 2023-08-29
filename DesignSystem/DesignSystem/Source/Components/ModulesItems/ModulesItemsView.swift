//
//  ModulesItemsView.swift
//  DesignSystem
//
//  Created by Erik Santos on 29/08/23.
//

import SwiftUI

public typealias ModulesItemsViewModel = ModulesItemsView.ViewModel
public struct ModulesItemsView: View {
    
    @ObservedObject
    var viewModel: ViewModel
    let columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.adaptive(minimum: 100))
    ]
    
    public var body: some View {
        LazyVGrid(columns: columns, spacing: 0) {
            ForEach(viewModel.modules, id: \.name) { module in
                ModuleItemView(module: module)
                    .cornerRadius(10)
                    .padding()
            }
        }
        
    }
    
    public init(viewModel: ViewModel) {
        self.viewModel = viewModel
    }
}

struct ModulesItemsView_Previews: PreviewProvider {
    static var previews: some View {
        let vm = ModulesItemsView.ViewModel(modules: ModulesItemsView.Mock.Modules)
        ModulesItemsView(viewModel: vm)
    }
}

extension ModulesItemsView {
    public final class ViewModel: ObservableObject {
        
        @Published
        public var modules: [ModuleItem]
        
        public init(modules: [ModuleItem]) {
            self.modules = modules
        }
    }
    
    
    public enum Mock {
        public static let Modules = [
            ModuleItem(name: "Minha Conta", image: .myAccountProfile, isActive: true),
            ModuleItem(name: "Locais de Risco", image: .warningLocation, isActive: false),
            ModuleItem(name: "Histórico", image: .history, isActive: true)
        ]
    }
}
