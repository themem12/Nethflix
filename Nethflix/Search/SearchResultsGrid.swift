//
//  SearchResultsGrid.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 02/05/24.
//

import SwiftUI

struct SearchResultsGrid: View {
    
    var movies: [MovieModel]
    @Binding var movieDetailToShow: MovieModel?
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(movies, id: \.id) { movie in
                StandarHomeMovie(movie: movie)
                    .frame(height: 200)
                    .onTapGesture {
                        movieDetailToShow = movie
                    }
            }
        }
    }
}

#Preview {
    SearchResultsGrid(movies: generateMovies(20), movieDetailToShow: .constant(nil))
}
