//
//  MovieDetail.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 16/04/24.
//

import SwiftUI

struct MovieDetail: View {
    var movie: MovieModel
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        //Close this view
                    }, label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    })
                }.padding(.horizontal, 24)
                
                ScrollView(.vertical) {
                    VStack {
                        StandarHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        MovieInfoSubheadline(movie: movie)
                        if let promotionHeadline = movie.promotionalHeadline {
                            Text(promotionHeadline)
                                .bold()
                                .font(.headline)
                        }
                        LargeButton(title: "Play", imageName: "play.fill", backgroundColor: .red) {
                            //
                        }
                        .padding(.horizontal, 10)
                        
                        //Current episode information
                        CurrentEpisodeInformation(movie: movie)
                        
                        CastInfo(movie: movie)
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My list", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(text: "Rated", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                //
                            }
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
//                        CustomTabSwitcher(tabs: [], movie: movie)
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    MovieDetail(movie: mockSerie)
}

struct MovieInfoSubheadline: View {
    var movie: MovieModel
    var body: some View {
        HStack {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingSubview(rating: movie.rating)
            Text(movie.numberOfSeasonsDisplay)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}

struct RatingSubview: View {
    var rating: String
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}

struct CastInfo: View {
    var movie: MovieModel
    var body: some View {
        VStack(spacing: 3) {
            HStack {
                Text("Cast: \(movie.cast)")
                Spacer()
            }
            HStack {
                Text("Creators: \(movie.creators)")
                Spacer()
            }
        }
        .font(.caption)
        .foregroundColor(.gray)
        .padding(.vertical, 8)
    }
}

struct CurrentEpisodeInformation: View {
    var movie: MovieModel
    var body: some View {
        Group {
            HStack {
                Text(movie.episodeInfoDisplay)
                    .bold()
                Spacer()
            }
            .padding(.vertical, 4)
            HStack {
                Text(movie.episodeDescriptionDisplay)
                    .font(.subheadline)
                Spacer()
            }
        }
    }
}
