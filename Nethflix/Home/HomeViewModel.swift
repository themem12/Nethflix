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
    
    init() {
        setupMovies()
    }
    
    public func getMovie(for category: String) -> [MovieModel] {
        movies[category] ?? []
    }
    
    private func setupMovies() {
        movies["Trending Now"] = mockMovieList
        movies["Comedy"] = mockMovieList.shuffled()
        movies["Watch It Again"] = mockMovieList.shuffled()
        movies["New Release"] = mockMovieList.shuffled()
    }
}
