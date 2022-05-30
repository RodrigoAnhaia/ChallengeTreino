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
            Spacer()
            
            ProfCardView()
            
            Spacer()
            
            StatisticView()
                .cornerRadius(20)
            
            Spacer()
        }
        .background(Image("background").opacity(0.8))
        .accentColor(Color(.label))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            
    }
}
