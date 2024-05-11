//
//  ComingSoonView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 11/05/24.
//

import SwiftUI

struct ComingSoonView: View {
    
    @State private var showNotificationList = false
    @State private var navBarHidden = true
    @State private var movieDetailToShow: MovieModel? = nil
    @State private var scrollOffset: CGFloat = 0.0
    @State private var activeIndex: Int = 0
    
    @ObservedObject var viewModel = ComingSoonViewModel()
    
    func updateActiveIndex(fromScroll scroll: CGFloat) {
        let cleanScroll = scroll - 105
        guard cleanScroll > 0 else {
            activeIndex = 0
            return
        }
        activeIndex = Int(cleanScroll / 410) + 1
    }
    
    var body: some View {
        let movies = viewModel.movies.enumerated().map({ $0 })
        
        let scrollTrackingBinding = Binding {
            return scrollOffset
        } set: { newValue in
            scrollOffset = newValue
            updateActiveIndex(fromScroll: newValue)
        }

        return NavigationView {
            Group {
                ZStack {
                    Color.black.ignoresSafeArea()
                    TrackableScrollView(contentOffset: scrollTrackingBinding) {
                        LazyVStack {
                            NotificationBar(showNotificationList: $showNotificationList)
                            
                            ForEach(movies, id: \.offset) { index, movie in
                                ComingSoonRow(movie: movie, movieDetailToShow: $movieDetailToShow)
                                    .frame(height: 400)
                                    .overlay {
                                        Group {
                                            index == activeIndex ? Color.clear : Color.black.opacity(0.8)
                                        }
                                    }
                                    .animation(.easeOut)
                            }
                        }
                    }
                    .foregroundStyle(.white)
                }
                
                NavigationLink(
                    destination: Text("Notification List"),
                    isActive: $showNotificationList) {
                        EmptyView()
                    }
                    .navigationTitle("")
                    .navigationBarHidden(navBarHidden)
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification), perform: { _ in
                        self.navBarHidden = true
                    })
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification), perform: { _ in
                        self.navBarHidden = false
                    })
            }
        }
    }
}

#Preview {
    ComingSoonView()
}
