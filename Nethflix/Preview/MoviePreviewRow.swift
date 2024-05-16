//
//  MoviePreviewRow.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 13/05/24.
//

import SwiftUI

struct MoviePreviewRow: View {
    
    var movies: [MovieModel]
    
    @Binding var showPreviewFullScreen: Bool
    @Binding var previewStartingIndex: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Previews")
                .font(.title3)
                .bold()
                .foregroundStyle(.white)
                .padding(.leading, 8)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10) {
                    ForEach(0..<movies.count) { movieIndex in
                        let movie = movies[movieIndex]
                        MoviePreviewCell(movie: movie)
                            .frame(width: 110, height: 50)
                            .padding(.leading, 8)
                            .onTapGesture {
                                previewStartingIndex = movieIndex
                                showPreviewFullScreen = true
                            }
                    }
                }
            }
        }
        .frame(height: 150)
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        MoviePreviewRow(
            movies: mockMovieList,
            showPreviewFullScreen: .constant(false),
            previewStartingIndex: .constant(0)
        )
    }
}
