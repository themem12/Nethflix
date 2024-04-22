//
//  Mocks.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import Foundation

let mockVideoURL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let mockImageURL = URL(string: "https://picsum.photos/300/100")!

let mockTrailer1 = TrailerModel(name: "Season 3 trailer", videoURL: mockVideoURL, thumbnailURL: mockImageURL)
let mockTrailer2 = TrailerModel(name: "The hero's journey", videoURL: mockVideoURL, thumbnailURL: mockImageURL)
let mockTrailer3 = TrailerModel(name: "The mysterious", videoURL: mockVideoURL, thumbnailURL: mockImageURL)

let mockTrailerList = [mockTrailer1, mockTrailer2, mockTrailer3]

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
    moreLikeThis: mockMoreLikeThisList,
    trailers: mockTrailerList
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
    moreLikeThis: mockMoreLikeThisList,
    trailers: mockTrailerList
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
    moreLikeThis: mockMoreLikeThisList,
    trailers: mockTrailerList
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
    moreLikeThis: mockMoreLikeThisList,
    trailers: mockTrailerList
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
    moreLikeThis: mockMoreLikeThisList,
    trailers: mockTrailerList
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
    moreLikeThis: mockMoreLikeThisList,
    trailers: mockTrailerList
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
    promotionalHeadline: "Watch season 3 now!",
    trailers: mockTrailerList
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
    moreLikeThis: [],
    trailers: mockTrailerList
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
    moreLikeThis: [],
    trailers: mockTrailerList
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
    moreLikeThis: [],
    trailers: mockTrailerList
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
    moreLikeThis: [],
    trailers: mockTrailerList
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
    moreLikeThis: [],
    trailers: mockTrailerList
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
    moreLikeThis: [],
    trailers: mockTrailerList
)

let mockMovieList = [mockMovie1, mockMovie2, mockMovie3, mockMovie4, mockMovie5, mockMovie6]
var mockMoreLikeThisList: [MovieModel] {
    return [mockMovie7, mockMovie8, mockMovie9, mockMovie10, mockMovie11, mockMovie12].shuffled()
}
