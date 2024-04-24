//
//  EpisodeModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 16/04/24.
//

import Foundation

struct EpisodeModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var season: Int
    var episodeNumber: Int
    var thumbnailImageURLString: String
    var description: String
    var length: Int
    
    var videoURL: URL
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageURLString)!
    }
}
