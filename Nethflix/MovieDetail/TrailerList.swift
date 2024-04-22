//
//  TrailerList.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 19/04/24.
//

import SwiftUI

struct TrailerList: View {
    var trailers: [TrailerModel]
    let screen = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            ForEach(trailers) { trailer in
                VStack(alignment: .leading) {
                    VideoPreviewImage(
                        imageURL: trailer.thumbnailURL,
                        videoURL: trailer.videoURL
                    )
                    .frame(maxWidth: screen.width)
                    Text(trailer.name)
                        .font(.headline)
                }
                .foregroundColor(.white)
                .padding(.bottom, 10)
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        TrailerList(trailers: mockTrailerList)
    }
}
