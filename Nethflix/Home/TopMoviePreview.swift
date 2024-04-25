//
//  TopMoviePreview.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    var movie: MovieModel
    var body: some View {
        ZStack {
            ZStack {
                Image("placeholder-movie-v")
                    .resizable()
                .scaledToFit()
                movie.backgroundColor.opacity(0.6)
            }
            VStack {
                Spacer()
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if category != movie.categories.last {
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                HStack {
                    Spacer()
                    
                    SmallVerticalButton(
                        text: "My list",
                        isOnImage: "checkmark",
                        isOffImage: "plus",
                        isOn: true
                    ) {
                        print("My list")
                    }
                    
                    Spacer()
                    
                    LargeButton(title: "Play", imageName: "play.fill") {
                        print("Play")
                    }.frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(
                        text: "Info",
                        isOnImage: "info.circle",
                        isOffImage: "info.circle",
                        isOn: true
                    ) {
                        print("Info")
                    }
                    
                    Spacer()
                }
                .padding(.vertical, 14)
            }
            .background(
                LinearGradient(
                    gradient: Gradient(
                        colors: [
                            Color.black.opacity(0),
                            Color.black.opacity(0.95)
                        ]
                    ),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .padding(.top, 100)
            )
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        TopMoviePreview(movie: mockMovie1)
    }
}
