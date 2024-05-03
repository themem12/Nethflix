//
//  SearchView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 29/04/24.
//

import SwiftUI

struct SearchView: View {
    
    @ObservedObject var viewModel = SearchViewModel()
    
    @State private var movieDetailToShow: MovieModel? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                SearchBar(
                    text: $viewModel.text,
                    isLoading: $viewModel.isLoading
                ).padding()
                
                ScrollView {
                    if viewModel.isShowingPopularMovies {
                        PopularSearchesView(
                            popularMovies: viewModel.popularMovies,
                            movieDetailToShow: $movieDetailToShow
                        )
                    }
                    
                    if viewModel.viewState == .empty {
                        Text("Your search did not have any results.")
                            .bold()
                            .padding(.top, 150)
                    } else if viewModel.viewState == .ready && !viewModel.isShowingPopularMovies {
                        VStack() {
                            HStack {
                                Text("Movies & TV")
                                    .bold()
                                    .font(.title3)
                                    .padding(.leading, 12)
                                Spacer()
                            }
                            
                            SearchResultsGrid(movies: viewModel.searchResults, movieDetailToShow: $movieDetailToShow)
                        }
                    }
                }
                
                Spacer()
            }
            if movieDetailToShow != nil {
                MovieDetail(
                    movie: movieDetailToShow!,
                    movieDetailToShow: $movieDetailToShow
                )
            }
        }.foregroundStyle(.white)
    }
}

#Preview {
    SearchView()
}

struct PopularSearchesView: View {
    
    var popularMovies: [MovieModel]
    @Binding var movieDetailToShow: MovieModel?
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular Searches")
                    .bold()
                    .font(.title3)
                    .padding(.leading, 12)
                Spacer()
            }
            LazyVStack {
                ForEach(popularMovies, id: \.id) { movie in
                    PopularMovieView(movie: movie, movieDetailToShow: $movieDetailToShow)
                        .frame(height: 90)
                }
            }
        }
    }
}
