//
//  LoginView.swift
//  nunu
//
//  Created by Riley Mitchell on 10/18/24.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("isLoggedIn") var isLoggedIn = false
    @State private var username = ""
    @State private var password = ""

    var body: some View {
        VStack {
            Spacer()
            
            Text("Login")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(spacing: 20) {
                TextField("User", text: $username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 40)
                
                SecureField("Password", text: $password)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 40)
                
                Button(action: {
                    login()
                }) {
                    Text("Login")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 40)
                }
            }
            .padding(.top, 50)
            
            Spacer()
        }
    }
    
    func login() {
        if !username.isEmpty && !password.isEmpty {
            isLoggedIn = true
        }
    }
}
