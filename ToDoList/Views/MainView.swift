//
//  ContentView.swift
//  ToDoList
//
//  Created by Bhuwan Singh on 23/08/24.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        if viewModel.isSignedIn , !viewModel.currentUserId.isEmpty {
            // sign In state
            accountView
        } else {
            LoginView()
        }
    }
    @ViewBuilder
    var accountView: some View {
        TabView {
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem {
                    Label("home", systemImage: "house")
                }
            ProfileView()
                .tabItem {
                    Label("Profile" , systemImage: "person.circle")
                }
        }
    }
    
}

#Preview {
    MainView()
}
