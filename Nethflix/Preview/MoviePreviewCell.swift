//
//  MoviePreviewCell.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 13/05/24.
//

import SwiftUI

struct MoviePreviewCell: View {
    
    var movie: MovieModel
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("placeholder-movie-v")
                .resizable()
                .scaledToFill()
                .clipShape(Circle(), style: FillStyle())
                .overlay {
                    Color.black.opacity(0.8)
                }
                .overlay {
                    Circle()
                        .stroke(lineWidth: 3.0)
                        .foregroundStyle(movie.backgroundColor)
                }
            Image(movie.previewImage)
                .resizable()
                .scaledToFit()
                .offset(y: -20)
                .frame(height: 65)
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        MoviePreviewCell(movie: mockMovie1)
            .frame(width: 165, height: 50)
    }
}
