//
//  LounchScreen.swift
//  ProtectMeNow
//
//  Created by Erik Santos on 17/08/23.
//

import SwiftUI

struct LounchScreen: View {
    
    @State
    var isAnimating = false
    
    @State
    var title = "PROTECT ME NOW"
    
    @State
    var subTitle = "Para todos que se sentem inseguros ao estarem sozinhos"
    
    var body: some View {
        VStack {
            Image(type: .logo)
                .padding(.bottom, 32)
            
            Text(title)
                .font(.system(size: 22, weight: .medium))
                .transition(.move(edge: .bottom))
            
            Text(subTitle)
                .font(.system(size: 11))
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
}

struct LounchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LounchScreen()
    }
}
