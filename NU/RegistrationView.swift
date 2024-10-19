//
//  RegistrationView.swift
//  nunu
//
//  Created by Riley Mitchell on 10/18/24.
//

import SwiftUI

struct RegistrationView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var registrationComplete: Bool = false

    var body: some View {
        VStack {
            Text("Register an Account")
                .font(.largeTitle)
                .padding()
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button(action: {
                // Save the user credentials
                UserDefaults.standard.set(username, forKey: "username")
                KeychainHelper.shared.save(service: "com.yourapp.login", account: "password", data: password)
                registrationComplete = true
            }) {
                Text("Register")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            
            if registrationComplete {
                Text("Registration complete! You can now log in.")
                    .foregroundColor(.green)
                    .padding()
            }
        }
        .padding()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
