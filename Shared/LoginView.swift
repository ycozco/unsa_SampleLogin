//
//  LoginView .swift
//  SampleLogin
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedin: Bool
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Image("login")
                    .resizable()
                    .frame(maxWidth: 100, maxHeight: 100)
                    .scaledToFit()

                TextField("Username", text: $username)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                SecureField("Password", text: $password)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login", action: btnLogin)
                    .padding()
                
                // Navegación a la vista de registro
                NavigationLink(destination: RegisterView(isRegistered: .constant(false))) {
                    Text("Create my account")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            .navigationTitle("Login")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
        }
    }

    func btnLogin() {
        isLoggedin = true
    }
}
