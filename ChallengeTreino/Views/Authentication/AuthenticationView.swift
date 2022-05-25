//
//  AutenticationView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import SwiftUI

struct AuthenticationView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            VStack {
                Text("Create an Account")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            .padding(.top)
            
            Spacer()
            
            VStack(alignment: .center) {
                
                TextField("Email", text: $email)
                    .padding()
                
                SecureField("Password", text: $password)
                    .padding()
                
                Button("Sign in") {
                    
                }
                .buttonStyle(PurpleGradienteButton())
            }
            .padding(.horizontal, 60)
            
            Spacer()
            
            
            VStack(spacing: 10) {
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Continue with Apple", systemImage: "applelogo")
                }
                
                Button {
                    print("Edit button was tapped")
                } label: {
                    Label("Continue with Google", image: "googleIcon" )
                        
                }
            }
            .buttonStyle(PurpleGradienteButton())
            
            Button("If you already have an account") {
                //holdor
                print("holdor")
            }
            .foregroundColor(.white)
            .padding()
        }
        .background(Image("backgroundAuthView")
            .resizable()
            .aspectRatio(1, contentMode: .fill)
            .frame(height: 900)
            .opacity(0.8)
        )
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticationView(email: .constant("Email"), password: .constant("password"))
    }
}
