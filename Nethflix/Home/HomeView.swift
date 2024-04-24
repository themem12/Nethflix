//
//  HomeView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 12/04/24.
//

import SwiftUI
import Kingfisher

struct HomeView: View {
    var viewModel: HomeViewModel = HomeViewModel()
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: MovieModel? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    ZStack(alignment: .top) {
                        TopMoviePreview(
                            movie: mockMovie1
                        )
                        .frame(
                            width: screen.width,
                            height: screen.height * 0.6
                        )
                        TopRowButtons()
                            .padding(.top, 40)
                    }
                    
                    Spacer(minLength: 24)
                    
                    ForEach(viewModel.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack {
                                    ForEach(viewModel.getMovie(for: category)) { movie in
                                        StandarHomeMovie(movie: movie)
                                            .frame(width: 110, height: 200)
                                            .padding(.horizontal, 10)
                                            .onTapGesture {
                                                movieDetailToShow = movie
                                            }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if let movie = movieDetailToShow {
                MovieDetail(
                    movie: movie,
                    movieDetailToShow: $movieDetailToShow
                )
                .animation(.easeIn)
                .transition(.opacity)
            }
        }
        .foregroundColor(.white)
        .ignoresSafeArea()
    }
}

#Preview {
    HomeView()
}

struct TopRowButtons: View {
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image("nethflix-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60)
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Text("TV Shows")
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Movies")
            })
            Spacer()
            Button(action: {
                
            }, label: {
                Text("My List")
            })
        }
        .padding(.leading, 10)
        .padding(.trailing, 30)
    }
}
