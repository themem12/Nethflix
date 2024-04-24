//
//  VideoPreviewImage.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import SwiftUI
import Kingfisher

struct VideoPreviewImage: View {
    var imageURL: URL
    var videoURL: URL
    
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
//            KFImage(imageURL)
            Image("placeholder-movie")
                .resizable()
                .aspectRatio(contentMode: .fill)
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
            .sheet(isPresented: $showingVideoPlayer, content: {
                SwiftUIVideoView(url: videoURL)
            })
        }
    }
}

#Preview {
    VideoPreviewImage(imageURL: mockImageURL, videoURL: mockVideoURL)
}
