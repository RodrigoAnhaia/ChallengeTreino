//
//  EmailModifier.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 27/05/22.
//

import SwiftUI

struct IsValid: ViewModifier {
    var isEmailValid: Bool
    
    func body(content: Content) -> some View {
        content
            .font(.callout)
        if !self.isEmailValid {
            Text("Email is Not Valid")
                .font(.callout)
                .foregroundColor(.red)
                .offset(y: 30)
        }
    }
}

extension View {
    func isValided(with isEmailValid: Bool) -> some View {
        modifier(IsValid(isEmailValid: isEmailValid))
    }
}
