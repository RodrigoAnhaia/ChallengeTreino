//
//  PurpleCircleGradienteButton.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 19/05/22.
//

import SwiftUI

struct PurpleCircleGradienteButton: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(width: 60, height: 60)
            .background(LinearGradient(gradient: Gradient(colors: [Color.purple, Color.purple, Color.pink]), startPoint: .leading, endPoint: .trailing))
            .overlay(Image(systemName: "cross.fill").frame(width: 40, height: 40).foregroundColor(.white))
            .clipShape(Circle())
            .padding()
            .scaleEffect(configuration.isPressed ? 1.2 : 1.0)
    }
}
