//
//  ContentView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showPreviewFullScreen = false
    @State private var previewStartingIndex: Int = 0
    @State private var previewCurrentPos: CGFloat = 1000
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        ZStack {
            TabView {
                Group {
                    HomeView(
                        showPreviewFullScreen: $showPreviewFullScreen,
                        previewStartingIndex: $previewStartingIndex
                    ).tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }.tag(0)
                    
                    SearchView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                        }.tag(1)
                    
                    ComingSoonView()
                        .tabItem {
                            Image(systemName: "play.rectangle")
                            Text("Coming Soon")
                        }.tag(2)
                    
                    DownloadsView()
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
            
            PreviewList(
                movies: mockMovieList,
                currentIndex: $previewStartingIndex,
                isVisible: $showPreviewFullScreen
            )
            .offset(y: previewCurrentPos)
            .isHidden(!showPreviewFullScreen)
            .animation(.easeIn)
            .transition(.move(edge: .bottom))
        }
        .onChange(of: showPreviewFullScreen) { _, value in
            if value {
                withAnimation {
                    self.previewCurrentPos = .zero
                }
            } else {
                withAnimation {
                    self.previewCurrentPos = screen.height + 20
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
