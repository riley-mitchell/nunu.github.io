//
//  LoginView.swift
//  nunu
//
//  Created by Riley Mitchell on 10/28/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool // Binding to track login status

    var body: some View {
        VStack {
            Text("Login")
                .font(.largeTitle)
                .padding()

            // Replace with your actual login form
            TextField("Username", text: .constant("")) // Use appropriate state for username
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            SecureField("Password", text: .constant("")) // Use appropriate state for password
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button(action: {
                // Simulate successful login
                // Perform actual login logic here
                self.isLoggedIn = true // Set isLoggedIn to true on success
            }) {
                Text("Login")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLoggedIn: .constant(false)) // Preview with binding
    }
}

