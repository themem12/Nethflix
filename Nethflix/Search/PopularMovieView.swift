//
//  PopularMovieView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 02/05/24.
//

import SwiftUI

struct PopularMovieView: View {
    
    var movie: MovieModel
    
    @Binding var movieDetailToShow: MovieModel?
    
    var body: some View {
        GeometryReader { proxy in
            HStack {
                Image("placeholder-movie")
                    .resizable()
                    .frame(width: proxy.size.width / 3)
                    .padding(.leading, 3)
                Text(movie.name)
                    .font(.system(size: 13))
                Spacer()
                Button(action: {
                    
                }, label: {
                    Image(systemName: "play.fill")
                }).padding(.trailing, 16)
            }
            .foregroundStyle(.white)
            .onTapGesture {
                self.movieDetailToShow = movie
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        PopularMovieView(movie: mockMovie1, movieDetailToShow: .constant(nil))
            .frame(height: 90)
    }
}
