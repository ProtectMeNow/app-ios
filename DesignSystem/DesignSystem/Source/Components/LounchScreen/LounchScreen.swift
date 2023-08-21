//
//  LounchScreen.swift
//  DesignKit
//
//  Created by Erik Santos on 18/08/23.
//

import SwiftUI

public struct LounchScreen: View {
    
    @State
    public var isAnimating = false
    
    @State
    public var title = "PROTECT ME NOW"
    
    @State
    public var subTitle = "Para todos que se sentem inseguros ao estarem sozinhos"
    
    public var body: some View {
        VStack {
            Image(type: .logo)
                .padding(.bottom, 32)
            
            
            Text(title)
                .font(.custom(type: .bjRegular, size: 22))
                .transition(.move(edge: .bottom))
            
            Text(subTitle)
                .font(.custom(type: .bjRegular, size: 11))
                .transition(.move(edge: .bottom))
  
        }
        .offset(y: -50)
        .opacity(isAnimating ? 1 : 0)
        .offset(y: isAnimating ? 0 : -40)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear {
            isAnimating = true
        }
    }
    
    public init() {}
}

struct LounchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LounchScreen()
    }
}
