//
//  PurpleGradienteButton.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import SwiftUI

struct PurpleGradienteButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.title2)
            .foregroundColor(Color.white)
            .frame(width: 280, height: 30)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.purple, Color.pink]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(12)
            .scaleEffect(configuration.isPressed ? 1.2 : 1.0)
    }
}
