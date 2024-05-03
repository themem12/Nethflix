//
//  MoviesGenerator.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 29/04/24.
//

import Foundation
import SwiftUI

func generateMovies(_ count: Int) -> [MovieModel] {
    guard count > 0 else { return [] }
    var movies: [MovieModel] = []
    
    for _ in 0..<count {
        let numberOfSeasons = Int.random(in: 0..<10)
        let newMovie = MovieModel(
            id: UUID().uuidString,
            name: randomName(),
            thumbnailURL: randomThumbnail(),
            categories: ["consectetur", "neque", "felis", "libero"],
            genre: .random(),
            year: Int.random(in: 1990..<2023),
            rating: "PG-13",
            numberOfSeasons: numberOfSeasons == 0 ? nil : numberOfSeasons,
            currentEpisode: randomCurrentEpisode(1, in: numberOfSeasons),
            defaultEpisodeInfo: mockEpisodeInfo1,
            creators: randomCreatorsCast(),
            cast: randomCreatorsCast(),
            moreLikeThis: mockMoreLikeThisList,
            episodes: randomEpisodesList(numberOfSeasons),
            promotionalHeadline: randomHeadline(),
            trailers: randomTrailers(),
            backgroundColor: randomColor()
        )
        
        movies.append(newMovie)
    }
    
    func randomName() -> String {
        let characterCount = Int.random(in: 3..<20)
        var newName = ""
        for _ in 0..<characterCount {
            let asciiRandom = Int.random(in: 65..<91)
            let character = String(UnicodeScalar(UInt8(asciiRandom)))
            newName.append(character)
        }
        return newName
    }
    
    func randomCreatorsCast() -> String {
        let randomCount = Int.random(in: 1..<5)
        var creators = ""
        for _ in 0..<randomCount {
            creators.append(randomName())
        }
        return creators
    }
    
    func randomThumbnail() -> URL {
        return URL(string: "https://picsum.photos/200/10\(Int.random(in: 0...9))")!
    }
    
    func randomDescription() -> String {
        let wordCount = Int.random(in: 0..<20)
        var description = ""
        for _ in 0..<wordCount {
            description.append("\(randomName()) ")
        }
        
        return description
    }
    
    func randomEpisodesList(_ seasons: Int) -> [EpisodeModel]? {
        guard seasons > 0 else { return nil }
        var episodes = [EpisodeModel]()
        let numberOfEpisodes = Int.random(in: 0...5)
        
        for season in 0..<seasons {
            for episode in 0..<numberOfEpisodes {
                episodes.append(randomEpisode(episode, in: season))
            }
        }
        
        return episodes
    }
    
    func randomEpisode(_ number: Int, in season: Int) -> EpisodeModel {
        return EpisodeModel(
            name: randomName(),
            season: season,
            episodeNumber: number,
            thumbnailImageURLString: "https://picsum.photos/200/10\(Int.random(in: 0...9))",
            description: randomDescription(),
            length: Int.random(in: 40..<120),
            videoURL: randomThumbnail()
        )
    }
    
    func randomCurrentEpisode(_ number: Int, in season: Int) -> CurrentEpisodeInfo? {
        guard season > 0 else { return nil }
        return CurrentEpisodeInfo(
            episodeName: randomName(),
            description: randomDescription(),
            season: season,
            episode: number
        )
    }
    
    func randomHeadline() -> String? {
        let random = Int.random(in: 0..<10)
        if random > 6 {
            return randomName()
        } else {
            return nil
        }
    }
    
    func randomTrailers() -> [TrailerModel] {
        var trailers: [TrailerModel] = []
        for _ in 0..<Int.random(in: 0...6) {
            trailers.append(
                TrailerModel(
                    name: randomName(),
                    videoURL: randomThumbnail(),
                    thumbnailURL: randomThumbnail()
                )
            )
        }
        return trailers
    }
    
    func randomColor() -> Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
    
    return movies
}
