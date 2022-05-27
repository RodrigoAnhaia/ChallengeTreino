//
//  AutenticationView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 17/05/22.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModelAut: ViewModelAuthtentication
    @Binding var email: String
    @Binding var password: String
    @Binding var isEmailValid : Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            VStack {
                Text("Log In an Account")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
            }
            .padding(.top)
            
            Spacer()
            
            VStack(spacing: 10) {
                TextField("Type your email", text: $email, onEditingChanged: { (isChanged) in
                    if !isChanged {
                        if self.viewModelAut.textFieldValidatorEmail(self.email) {
                            self.isEmailValid = true
                        } else {
                            self.isEmailValid = false
                            self.email = ""
                        }
                    }
                })
                .autocapitalization(.none)
                .padding()
                .isValided(with: isEmailValid)
                
                SecureField("Type your password", text: $password)
                    .autocapitalization(.none)
                    .padding()
                
                    
                
                Button("Sign in") {
                    print("tapped")
                }
                .buttonStyle(PurpleGradienteButton())
            }
            .padding()
            .textFieldStyle(.roundedBorder)
            .padding()
            
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
        }
        .background(Image("backgroundAuthView")
            .resizable()
            .aspectRatio(1, contentMode: .fill)
            .frame(height: 900)
            .opacity(0.8)
        )
        .navigationBarHidden(true)
        .accentColor(Color(.label))
    }
}

struct AuthenticationView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModelAut: ViewModelAuthtentication(), email: .constant("Email"), password: .constant("password"), isEmailValid: .constant(true))
    }
}
