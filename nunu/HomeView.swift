//
//  HomeView.swift
//  nunu
//
//  Created by Riley Mitchell on 10/19/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                VStack(spacing: 20) {
                    NavigationLink(destination: Option1View()) {
                        Text("Happy")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.cyan.opacity(0.7), Color.blue.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }

                    NavigationLink(destination: Option2View()) {
                        Text("Sad")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.mint.opacity(0.7), Color.teal.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }

                    NavigationLink(destination: Option3View()) {
                        Text("Mad")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.pink.opacity(0.7), Color.red.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }

                    NavigationLink(destination: Option4View()) {
                        Text("Tired")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.gray.opacity(0.7), Color.black.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }

                    NavigationLink(destination: Option5View()) {
                        Text("Curious")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.purple.opacity(0.7), Color.indigo.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }

                    NavigationLink(destination: Option6View()) {
                        Text("Mixed")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.green.opacity(0.7), Color.yellow.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }

                    NavigationLink(destination: Option7View()) {
                        Text("Random")
                            .smallModernButtonStyle(gradient: LinearGradient(
                                colors: [Color.orange.opacity(0.7), Color.yellow.opacity(0.8)],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                    }
                }
                .padding(.horizontal, 15)
                
                Spacer()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
