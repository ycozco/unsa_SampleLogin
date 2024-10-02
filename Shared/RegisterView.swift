//
//  RegisterView.swift
//  SampleLogin (iOS)
//
//  Created by yoset on 1/10/24.
//
import SwiftUI

struct RegisterView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var errorMessage = ""
    
    @Binding var isRegistered: Bool  // Estado que indica si el registro fue exitoso para redirigir a otra vista
    
    var body: some View {
        VStack {
            Text("Register")
                .font(.largeTitle)
                .padding()
            
            // Campo de texto para el nombre de usuario
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            // Campo para la contraseña
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            // Campo para confirmar la contraseña
            SecureField("Confirm Password", text: $confirmPassword)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            // Mostrar el mensaje de error si hay
            if !errorMessage.isEmpty {
                Text(errorMessage)
                    .foregroundColor(.red)
                    .padding()
            }
            
            // Botón de registro
            Button(action: register) {
                Text("Register")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
    
    // Función para manejar el registro
    func register() {
        // Validación básica
        guard !username.isEmpty else {
            errorMessage = "Username cannot be empty"
            return
        }
        
        guard !password.isEmpty else {
            errorMessage = "Password cannot be empty"
            return
        }
        
        guard password == confirmPassword else {
            errorMessage = "Passwords do not match"
            return
        }
        
        // Si las validaciones pasan, se registra correctamente
        isRegistered = true
        errorMessage = ""
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView(isRegistered: .constant(false))
    }
}
