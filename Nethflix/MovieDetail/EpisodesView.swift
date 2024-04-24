//
//  EpisodesView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 22/04/24.
//

import SwiftUI

struct EpisodesView: View {
    var episodes: [EpisodeModel]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getSeasonEpisodes(forSeason season: Int) -> [EpisodeModel] {
        return episodes.filter({ $0.season == season })
    }
    
    var body: some View {
        VStack(spacing: 14) {
            HStack {
                Button(action: {
                    showSeasonPicker = true
                }, label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                })
                Spacer()
            }
            ForEach(getSeasonEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack {
                        VideoPreviewImage(
                            imageURL: episode.thumbnailURL,
                            videoURL: episode.videoURL
                        )
                        .frame(width: 120, height: 70)
                        .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber). \(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        Spacer()
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }
                    Text(episode.description)
                        .font(.system(size: 13))
                        .lineLimit(3)
                }
                .padding(.bottom, 20)
            }
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.horizontal, 20)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        EpisodesView(
            episodes: mockCompleteEpisodes,
            showSeasonPicker: .constant(false),
            selectedSeason: .constant(1)
        )
    }
}
