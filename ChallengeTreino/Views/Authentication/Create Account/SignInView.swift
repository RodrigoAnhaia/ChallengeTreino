//
//  CreateAccountView.swift
//  ChallengeTreino
//
//  Created by Rodrigo de Anhaia on 26/05/22.
//

import SwiftUI

struct SignInView: View {
    @StateObject var viewModelAut: ViewModelAuthtentication = ViewModelAuthtentication()
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isEmailValid : Bool   = true
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center) {
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
                }
                .textFieldStyle(.roundedBorder)
                .padding()
                
                Spacer()
                
                Button {
                    print("create acc")
                } label: {
                    Text("Create account")
                }
                .buttonStyle(PurpleGradienteButton())
                
                
                NavigationLink {
                    SignUpView(viewModelAut: viewModelAut, email: $email, password: $password, isEmailValid: $isEmailValid)
                } label: {
                    Text("If you already have an account")
                        .font(.title3)
                        .fontWeight(.bold)
                }
                .padding()
            }
            .navigationTitle("Create an Account")
            .background(Image("backgroundAuthView")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .frame(height: 900)
                .opacity(0.8)
                .offset(y: -30)
            )
        }
        .navigationBarHidden(true)
        .accentColor(Color(.label))
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
            
    }
}
