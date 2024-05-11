//
//  ComingSoonRow.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 11/05/24.
//

import SwiftUI
import AVKit

struct ComingSoonRow: View {
    
    var movie: MovieModel
    
    @Binding var movieDetailToShow: MovieModel?
    
    let screen = UIScreen.main.bounds
    
    var player: AVPlayer {
        AVPlayer(url: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4")!)
    }
    
    var body: some View {
        VStack() {
            VideoPlayer(player: player)
                .frame(height: 200)
            VStack {
                HStack {
                    ZStack {
                        Image("placeholder-movie")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                        movie.backgroundColor.opacity(0.7)
                    }
                    .frame(width: screen.size.width / 3, height: 75)
                    .clipped()
                    Spacer()
                    
                    Button(action: {
                        //remind me
                    }, label: {
                        VStack(spacing: 6) {
                            Image(systemName: "bell")
                            Text("Remind Me")
                        }
                    })
                    .padding(.horizontal)
                    
                    Button(action: {
                        //remind me
                        movieDetailToShow = movie
                    }, label: {
                        VStack(spacing: 6) {
                            Image(systemName: "info.circle")
                                .font(.title3)
                            Text("Info")
                        }
                    })
                    .padding(.horizontal)
                }
                .font(.subheadline)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(movie.name)
                            .font(.title2)
                            .bold()
                        Text(movie.episodeDescriptionDisplay)
                            .foregroundStyle(.gray)
                            .font(.subheadline)
                    }
                    Spacer()
                }
            }
            .foregroundStyle(.white)
            .padding(.horizontal)
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        ComingSoonRow(movie: mockMovie2, movieDetailToShow: .constant(nil))
    }
}
