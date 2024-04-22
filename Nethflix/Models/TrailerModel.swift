//
//  TrailerModel.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import Foundation

struct TrailerModel: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var videoURL: URL
    var thumbnailURL: URL
}
