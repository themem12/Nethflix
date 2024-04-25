//
//  MovieModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import Foundation
import SwiftUI

struct MovieModel: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    var genre: HomeGenre = .AllGenres
    
    //Movie Detail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    //Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultEpisodeInfo: CurrentEpisodeInfo
    var creators: String
    var cast: String
    
    var moreLikeThis: [MovieModel]
    
    var episodes: [EpisodeModel]?

    var promotionalHeadline: String?
    
    var trailers: [TrailerModel]
    
    var backgroundColor: Color
    
    var numberOfSeasonsDisplay: String {
        if let num = numberOfSeasons {
            if num == 1 {
                return "1 season"
            } else {
                return "\(num) seasons"
            }
        }
        return ""
    }
    
    var episodeInfoDisplay: String {
        if let current = currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(defaultEpisodeInfo.season):E\(defaultEpisodeInfo.episode) \(defaultEpisodeInfo.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = currentEpisode {
            return current.description
        } else {
            return defaultEpisodeInfo.description
        }
    }
    
    var mediaType: MediaType {
        return episodes == nil ? .movie : .tvShow
    }
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

enum MediaType {
    case movie
    case tvShow
}
