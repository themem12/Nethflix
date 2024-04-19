//
//  CustomTabSwitcher.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import SwiftUI

struct CustomTabSwitcher: View {
    var tabs: [CustomTab]
    var movie: MovieModel
    
    @State private var currentTab: CustomTab = .episodes
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            Button(action: {
                                currentTab = tab
                            }
                            , label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            })
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }
            }
            
            switch currentTab {
            case .episodes:
                Text("Episodes")
            case .trailers:
                Text("trailers")
            case .more:
                MoreLikeThis(movies: movie.moreLikeThis)
            }
        }.foregroundColor(.white)
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
    
    static var mockTabs: [CustomTab] = [.episodes, .trailers, .more]
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        CustomTabSwitcher(tabs: CustomTab.mockTabs, movie: mockMovie3)
    }
}
