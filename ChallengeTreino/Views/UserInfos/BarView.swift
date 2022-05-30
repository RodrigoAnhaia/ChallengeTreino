//
//  BarView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 30/05/22.
//

import SwiftUI

struct BarView: View {
    var value: CGFloat
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                Capsule()
                    .frame(width: 30, height: 200)
                    .foregroundColor(.purple)
                Capsule()
                    .frame(width: 30, height: value)
                    .foregroundColor(.white)
            }
            Text("Mass")
                .font(.caption)
                .bold()
                .padding(.top, 8)
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView(value: 0)
    }
}
