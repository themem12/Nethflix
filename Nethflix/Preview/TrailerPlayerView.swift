//
//  TrailerPlayerView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 14/05/24.
//

import SwiftUI
import VideoPlayer

struct TrailerPlayerView: View {
    
    var videoURL: URL?
    @Binding var playVideo: Bool
    
    var body: some View {
        if let videoURL = videoURL {
            VideoPlayer(url: videoURL, play: $playVideo)
        } else {
            HStack {
                Image(systemName: "")
                Text("Could not load video")
            }
            .font(.system(size: 24))
            .foregroundStyle(.red)
        }
    }
}

#Preview {
    TrailerPlayerView(videoURL: nil, playVideo: .constant(false))
}
