//
//  ContentView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            Group {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                
                SearchView()
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }.tag(1)
                
                Text("Coming Soon")
                    .tabItem {
                        Image(systemName: "play.rectangle")
                        Text("Coming Soon")
                    }.tag(2)
                
                Text("Downloads")
                    .tabItem {
                        Image(systemName: "arrow.down.to.line.alt")
                        Text("Downloads")
                    }.tag(3)
                
                Text("More")
                    .tabItem {
                        Image(systemName: "equal")
                        Text("More")
                    }.tag(4)
            }
            .toolbarBackground(.black, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarColorScheme(.dark, for: .tabBar)
        }
    }
}

#Preview {
    ContentView()
}
