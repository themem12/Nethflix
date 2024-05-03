//
//  StandarHomeMovie.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import SwiftUI
import Kingfisher

struct StandarHomeMovie: View {
    var movie: MovieModel
    
    var body: some View {
        ZStack {
            Image("placeholder-movie-v")
                .resizable()
                .scaledToFill()
            movie.backgroundColor.opacity(0.7)
        }
//        KFImage(movie.thumbnailURL)
//            .frame(width: 100, height: 200)
//            .border(Color.gray)
//            .padding(.horizontal, 20)
    }
}

#Preview {
    StandarHomeMovie(movie: mockMovie1)
}
