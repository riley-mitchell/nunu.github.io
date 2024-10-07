//
//  ContentView.swift
//  NU
//
//  Created by Riley Mitchell on 8/21/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSplashScreenActive = true

    var body: some View {
        ZStack {
            if !isSplashScreenActive {
                NavigationView {
                    VStack {
                        Spacer()

                        VStack(spacing: 20) {
                            // Modernized smaller button with new colors and gradients
                            NavigationLink(destination: Option1View()) {
                                Text("Happy")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.cyan.opacity(0.7), Color.blue.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Happy mood option")
                            .accessibilityHint("Navigates to positive mood content")

                            NavigationLink(destination: Option2View()) {
                                Text("Sad")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.mint.opacity(0.7), Color.teal.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Sad mood option")
                            .accessibilityHint("Navigates to sad mood content")

                            NavigationLink(destination: Option3View()) {
                                Text("Mad")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.pink.opacity(0.7), Color.red.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Mad mood option")
                            .accessibilityHint("Navigates to angry mood content")

                            NavigationLink(destination: Option4View()) {
                                Text("Tired")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.gray.opacity(0.7), Color.black.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Tired mood option")
                            .accessibilityHint("Navigates to tired mood content")

                            NavigationLink(destination: Option5View()) {
                                Text("Curious")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.purple.opacity(0.7), Color.indigo.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Curious mood option")
                            .accessibilityHint("Navigates to curious mood content")

                            NavigationLink(destination: Option6View()) {
                                Text("Mixed")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.green.opacity(0.7), Color.yellow.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Mixed mood option")
                            .accessibilityHint("Navigates to mixed mood content")

                            NavigationLink(destination: Option7View()) {
                                Text("Random")
                                    .modifier(SmallModernButtonStyle(gradient: LinearGradient(
                                        colors: [Color.orange.opacity(0.7), Color.yellow.opacity(0.8)],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing)))
                            }
                            .accessibilityLabel("Random mood option")
                            .accessibilityHint("Navigates to random content")
                        }
                        .padding(.horizontal, 15)

                        Spacer()
                    }
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                }
                .navigationViewStyle(StackNavigationViewStyle())
            } else {
                SplashScreenView(isActive: $isSplashScreenActive)
            }
        }
    }
}

// Custom Small Modern Button Style with reduced size
struct SmallModernButtonStyle: ViewModifier {
    var gradient: LinearGradient

    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, minHeight: 45) // Adjusted size to be smaller
            .padding()
            .background(gradient)
            .foregroundColor(.white)
            .font(.subheadline) // Slightly smaller font for modern look
            .cornerRadius(15) // Reduced corner radius for cleaner look
            .shadow(color: Color.black.opacity(0.15), radius: 8, x: 0, y: 4) // Lighter shadow
            .padding(.horizontal, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}





