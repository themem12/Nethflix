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
    @State private var previewNewPos: CGFloat = 1000
    
    @State private var previewHorizontalDragActive: Bool = false
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        
        let previewDragGesture = DragGesture(minimumDistance: 20)
            .onChanged { value in
                if previewHorizontalDragActive { return }
                
                if previewCurrentPos == .zero {
                    if abs(value.translation.width) > abs(value.translation.height) {
                        previewHorizontalDragActive = true
                        return
                    }
                }
                
                //Vertical Only
                let shouldBePosition = value.translation.height + self.previewCurrentPos
                
                if shouldBePosition < 0 {
                    return
                } else {
                    self.previewCurrentPos = shouldBePosition
                }
                
            }
            .onEnded { value in
                if previewHorizontalDragActive {
                    previewHorizontalDragActive = false
                    return
                }
                
                let shouldBePosition = value.translation.height + self.previewNewPos
                
                if shouldBePosition < 0 {
                    self.previewCurrentPos = .zero
                    self.previewNewPos = .zero
                } else {
                    let closingPoint = screen.size.height * 0.2
                    if shouldBePosition > closingPoint {
                        withAnimation {
                            self.showPreviewFullScreen = false
                            self.previewNewPos = screen.height + 20
                            self.previewCurrentPos = screen.height + 20
                        }
                    } else {
                        withAnimation {
                            self.previewNewPos = .zero
                            self.previewCurrentPos = .zero
                        }
                    }
                }
                
                previewHorizontalDragActive = false
            }
        
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
                isVisible: $showPreviewFullScreen,
                externalDragGesture: previewDragGesture
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
                    self.previewNewPos = .zero
                }
            } else {
                withAnimation {
                    self.previewCurrentPos = screen.height + 20
                    self.previewNewPos = screen.height + 20
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
