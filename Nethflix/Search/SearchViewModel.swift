//
//  SearchViewModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 29/04/24.
//

import Foundation
import SwiftUI

class SearchViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var viewState: ViewState = .ready
    
    @Published var popularMovies: [MovieModel] = []
    @Published var searchResults: [MovieModel] = []
    
    @Published var isShowingPopularMovies: Bool = true
    
    @Published var text: String = "" {
        didSet {
            updateSearchText(with: text)
        }
    }
    
    init() {
        getPopularMovies()
    }
    
    public func updateSearchText(with text: String) {
        setViewState(to: .loading)
        
        if text.count > 0 {
            isShowingPopularMovies = false
            getSearchResults(forText: text)
        } else {
            isShowingPopularMovies = true
        }
    }
    
    private func getPopularMovies() {
        self.popularMovies = generateMovies(40)
    }
    
    private func getSearchResults(forText text: String) {
        let haveResult = Int.random(in: 0...3)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            if haveResult == 0 {
                self.searchResults = []
                self.setViewState(to: .empty)
            } else {
                let movies = generateMovies(21)
                self.searchResults = movies
                self.setViewState(to: .ready)
            }
        }
    }
    
    private func setViewState(to state: ViewState) {
        DispatchQueue.main.async {
            self.viewState = state
            self.isLoading = state == .loading
        }
    }
}

enum ViewState {
    case empty
    case loading
    case ready
    case error
}
