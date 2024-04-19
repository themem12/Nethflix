//
//  MovieModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import Foundation

struct MovieModel: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    
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
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}

let mockEpisodeInfo1 = CurrentEpisodeInfo(episodeName: "Beginnings", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla laoreet odio id est placerat, a elementum est egestas. Fusce lacinia vulputate lacus, at ornare elit tristique a. Sed consequat, eros.", season: 2, episode: 1)

let mockMovie1 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: mockMoreLikeThisList
)

let mockMovie2 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "Baran bo Odar, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis triebel",
    moreLikeThis: mockMoreLikeThisList
)
let mockMovie3 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "Baran bo Odar, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis triebel",
    moreLikeThis: mockMoreLikeThisList
)
let mockMovie4 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "Baran bo Odar, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis triebel",
    moreLikeThis: mockMoreLikeThisList
)
let mockMovie5 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "Baran bo Odar, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis triebel",
    moreLikeThis: mockMoreLikeThisList
)
let mockMovie6 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "Baran bo Odar, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis triebel",
    moreLikeThis: mockMoreLikeThisList
)

let mockSerie = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF0NroBIRbho4_ponatf2JnSwWwxjcrRPQc6lbnNye2Q&s")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "Baran bo Odar, Jantje Friese",
    cast: "Louis Hofmann, Oliver Masucci, jordis triebel",
    moreLikeThis: mockMoreLikeThisList,
    promotionalHeadline: "Watch season 3 now!"
)

let mockMovie7 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: []
)

let mockMovie8 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: []
)
let mockMovie9 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: []
)
let mockMovie10 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: []
)
let mockMovie11 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: []
)
let mockMovie12 = MovieModel(
    id: UUID().uuidString,
    name: "Test",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultEpisodeInfo: mockEpisodeInfo1,
    creators: "",
    cast: "",
    moreLikeThis: []
)

let mockMovieList = [mockMovie1, mockMovie2, mockMovie3, mockMovie4, mockMovie5, mockMovie6]
var mockMoreLikeThisList: [MovieModel] {
    return [mockMovie7, mockMovie8, mockMovie9, mockMovie10, mockMovie11, mockMovie12].shuffled()
}
