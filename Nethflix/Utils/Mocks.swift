//
//  Mocks.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import Foundation
import SwiftUI

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
    trailers: mockTrailerList,
    previewImage: "whiteLinesPreview",
    previewVideo: mockVideoURL,
    backgroundColor: .purple
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
    trailers: mockTrailerList,
    previewImage: "arrestedDevPreview",
    previewVideo: mockVideoURL,
    backgroundColor: .blue
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
    trailers: mockTrailerList,
    previewImage: "travelersPreview",
    previewVideo: mockVideoURL,
    backgroundColor: .brown
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
    trailers: mockTrailerList,
    previewImage: "dirtyJohnPreview",
    previewVideo: mockVideoURL,
    backgroundColor: .red
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
    trailers: mockTrailerList,
    previewImage: "darkPreview",
    previewVideo: mockVideoURL,
    backgroundColor: .yellow
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
    trailers: mockTrailerList,
    previewImage: "whiteLinesPreview",
    previewVideo: mockVideoURL,
    backgroundColor: .purple
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
    episodes: mockCompleteEpisodes,
    promotionalHeadline: "Watch season 3 now!",
    trailers: mockTrailerList,
    previewImage: "arrestedDevPreview",
    backgroundColor: .cyan
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
    trailers: mockTrailerList,
    previewImage: "travelersPreview",
    backgroundColor: .green
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
    trailers: mockTrailerList,
    previewImage: "dirtyJohnPreview",
    backgroundColor: .indigo
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
    trailers: mockTrailerList,
    previewImage: "darkPreview",
    backgroundColor: .mint
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
    trailers: mockTrailerList,
    previewImage: "whiteLinesPreview",
    backgroundColor: .orange
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
    trailers: mockTrailerList,
    previewImage: "arrestedDevPreview",
    backgroundColor: .pink
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
    trailers: mockTrailerList,
    previewImage: "travelersPreview",
    backgroundColor: .teal
)

let mockMovieList = [mockMovie1, mockMovie2, mockMovie3, mockMovie4, mockMovie5, mockMovie6, mockSerie]
var mockMoreLikeThisList: [MovieModel] {
    return [mockMovie7, mockMovie8, mockMovie9, mockMovie10, mockMovie11, mockMovie12].shuffled()
}

let mockEpisode1 = EpisodeModel(
    name: "The great beginning",
    season: 1,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "Six months of something had happen so everyone is kind of not in the greatest place so the hero or maybe the villain will do something to make it better or worse depending on how it ends so yeah that's it.",
    length: 61,
    videoURL: mockVideoURL
)

let mockEpisode2 = EpisodeModel(
    name: "The middle stuff",
    season: 1,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "As you know, if you saw the first episode something went horrible good so it ended as the hero save almost everyone, but as a series we need more episodes so we did another one where the hero will be doing some day to day stuff for an hour and a half, you will surely kind of love it.",
    length: 91,
    videoURL: mockVideoURL
)

let mockEpisode3 = EpisodeModel(
    name: "Not quite the end",
    season: 1,
    episodeNumber: 3,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "So we thought as the public kins of not know what they want we might do another season, not sure but you know (or maybe not) we will do for sure what the producers say, so yeah, will might see you again. (NICE)",
    length: 69,
    videoURL: mockVideoURL
)

let mockEpisode4 = EpisodeModel(
    name: "The great beginning",
    season: 2,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "Six months of something had happen so everyone is kind of not in the greatest place so the hero or maybe the villain will do something to make it better or worse depending on how it ends so yeah that's it.",
    length: 61,
    videoURL: mockVideoURL
)

let mockEpisode5 = EpisodeModel(
    name: "The middle stuff",
    season: 2,
    episodeNumber: 2,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "As you know, if you saw the first episode something went horrible good so it ended as the hero save almost everyone, but as a series we need more episodes so we did another one where the hero will be doing some day to day stuff for an hour and a half, you will surely kind of love it.",
    length: 91,
    videoURL: mockVideoURL
)

let mockEpisode6 = EpisodeModel(
    name: "Not quite the end",
    season: 3,
    episodeNumber: 1,
    thumbnailImageURLString: "https://picsum.photos/300/100",
    description: "So we thought as the public kins of not know what they want we might do another season, not sure but you know (or maybe not) we will do for sure what the producers say, so yeah, will might see you again. (NICE)",
    length: 69,
    videoURL: mockVideoURL
)

var mockCompleteEpisodes = [
    mockEpisode1,
    mockEpisode2,
    mockEpisode3,
    mockEpisode4,
    mockEpisode5,
    mockEpisode6
]
