//
//  ComingSoonViewModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 11/05/24.
//

import Foundation

class ComingSoonViewModel: ObservableObject {
    
    @Published var movies: [MovieModel] = []
    
    init() {
        self.movies = generateMovies(20)
    }
}
