//
//  HomeViewModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [String: [MovieModel]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({ String($0) })
    }
    
    public var allGenre: [HomeGenre] = [.AllGenres, .Action, .Comedy, .Horror, .Thriller]
    
    init() {
        setupMovies()
    }
    
    public func getMovie(
        for category: String,
        andHomeRow: HomeTopRow,
        andGenre genre: HomeGenre
    ) -> [MovieModel] {
        switch andHomeRow {
        case .home:
            return movies[category] ?? []
        case .tvShows:
            return (movies[category] ?? []).filter({ $0.mediaType == .tvShow && $0.genre == genre })
        case .movies:
            return (movies[category] ?? []).filter({ $0.mediaType == .movie && $0.genre == genre })
        case .myList:
            return []
        }
    }
    
    private func setupMovies() {
        movies["Trending Now"] = mockMovieList
        movies["Comedy"] = mockMovieList.shuffled()
        movies["Watch It Again"] = mockMovieList.shuffled()
        movies["New Release"] = mockMovieList.shuffled()
    }
}
