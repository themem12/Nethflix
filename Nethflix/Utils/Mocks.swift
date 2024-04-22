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
