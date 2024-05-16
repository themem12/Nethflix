//
//  PreviewView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 14/05/24.
//

import SwiftUI

struct PreviewView: View {
    
    @ObservedObject var viewModel: PreviewViewModel
    var playVideo: Bool
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            TrailerPlayerView(
                videoURL: viewModel.movie.trailers.first?.videoURL,
                playVideo: .constant(playVideo)
            )
            
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(viewModel.movie.name)
                            .bold()
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .padding(.leading, 20)
                .padding(.top, 60)
                Spacer()
                
                HStack {
                    ForEach(0..<viewModel.movie.categories.count, id: \.self) { categoryIndex in
                        let category = viewModel.movie.categories[categoryIndex]
                        HStack {
                            Text(category)
                                .font(.footnote)
                            if categoryIndex < viewModel.movie.categories.count - 1 {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 3))
                            }
                        }
                    }
                }
                
                HStack {
                    
                    Spacer()
                    
                    SmallVerticalButton(
                        text: "My List",
                        isOnImage: "checkmark",
                        isOffImage: "plus",
                        color: viewModel.movie.backgroundColor,
                        isOn: true) {
                            //
                        }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        HStack {
                            Image(systemName: "arrowtriangle.right.fill")
                            Text("PLAY")
                                .fontWeight(.heavy)
                        }
                        .padding(.vertical, 12)
                        .padding(.horizontal, 26)
                        .border(viewModel.movie.backgroundColor, width: 3)
                    })
                    
                    Spacer()
                    
                    SmallVerticalButton(
                        text: "Info",
                        isOnImage: "info.circle",
                        isOffImage: "info.circle",
                        color: viewModel.movie.backgroundColor,
                        isOn: true) {
                            //
                        }
                    
                    Spacer()
                    
                }.padding(.top, 14)
                
            }
            .padding(.bottom, 48)
            .foregroundStyle(viewModel.movie.backgroundColor)
        }.ignoresSafeArea()
    }
}

#Preview {
    PreviewView(viewModel: PreviewViewModel(movie: mockMovie1), playVideo: true)
}
