//
//  MoreLikeThis.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [MovieModel]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(movies) { movie in
                StandarHomeMovie(movie: movie)
            }
        }
    }
}

#Preview {
    MoreLikeThis(movies: mockMovieList)
}
