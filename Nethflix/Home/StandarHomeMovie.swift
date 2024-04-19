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
    var delta: CGFloat {
        CGFloat.random(in: -10..<10)
    }
    
    var body: some View {
        Image("placeholder-movie-v")
            .resizable()
            .scaledToFill()
//        KFImage(movie.thumbnailURL)
//            .frame(width: 100, height: 200)
//            .border(Color.gray)
//            .padding(.horizontal, 20)
    }
}

#Preview {
    StandarHomeMovie(movie: mockMovie1)
}
