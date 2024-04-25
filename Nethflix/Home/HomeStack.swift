//
//  HomeStack.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 24/04/24.
//

import Foundation
import SwiftUI

struct HomeStack: View {
    
    var viewModel: HomeViewModel
    var topBarSelection: HomeTopRow
    var selectedGenre: HomeGenre
    
    @Binding var movieDetailToShow: MovieModel?
    
    var body: some View {
        ForEach(viewModel.allCategories, id: \.self) { category in
            VStack {
                HStack {
                    Text(category)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.getMovie(for: category, andHomeRow: topBarSelection, andGenre: selectedGenre)) { movie in
                            StandarHomeMovie(movie: movie)
                                .frame(width: 110, height: 200)
                                .padding(.horizontal, 10)
                                .onTapGesture {
                                    movieDetailToShow = movie
                                }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        ScrollView(showsIndicators: false) {
            HomeStack(
                viewModel: HomeViewModel(),
                topBarSelection: .movies, 
                selectedGenre: .AllGenres,
                movieDetailToShow: .constant(nil)
            )
        }
    }.foregroundColor(.white)
}
