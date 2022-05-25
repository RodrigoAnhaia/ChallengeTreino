//
//  ProfileView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 22/05/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Image("background")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Alencar, José")
                        .font(.title2)
                        .bold()
                    
                    Text("\(24) anos")
                        .font(.body)
                        .fontWeight(.medium)
                    
                    Text("\(4) anos e \(6) meses de treinos")
                        .font(.caption)
                        .fontWeight(.medium)
                }
                .padding()
                .frame(height: 120)
            }
        }
        .frame(maxWidth: .infinity)
        .background(.thinMaterial)
        .cornerRadius(20)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
