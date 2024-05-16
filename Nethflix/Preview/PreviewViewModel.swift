//
//  PreviewViewModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 14/05/24.
//

import Foundation

class PreviewViewModel: ObservableObject {
    var movie: MovieModel
    
    init(movie: MovieModel) {
        self.movie = movie
    }
}
