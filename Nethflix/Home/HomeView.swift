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
    
    @State private var topRowSelection: HomeTopRow = .home
    @State private var homeGenre: HomeGenre = .AllGenres
    
    @State private var showGenreSelection = false
    @State private var showTopRowSelection = false
    
    @Binding var showPreviewFullScreen: Bool
    @Binding var previewStartingIndex: Int
    
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
                        TopRowButtons(
                            topRowSelection: $topRowSelection,
                            homeGenre: $homeGenre,
                            showGenreSelection: $showGenreSelection,
                            showTopRowSelection: $showTopRowSelection
                        )
                        .padding(.top, 40)
                    }.padding(.top, -60)
                    
                    Spacer(minLength: 24)
                    
                    MoviePreviewRow(
                        movies: mockMovieList,
                        showPreviewFullScreen: $showPreviewFullScreen,
                        previewStartingIndex: $previewStartingIndex
                    )
                    
                    HomeStack(
                        viewModel: viewModel,
                        topBarSelection: topRowSelection, 
                        selectedGenre: homeGenre,
                        movieDetailToShow: $movieDetailToShow
                    )
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
            
            if showTopRowSelection {
                Group {
                    Color.black.opacity(0.9)
                    VStack(spacing: 40) {
                        Spacer()
                        ForEach(HomeTopRow.allCases, id: \.self) { topRow in
                            Button(action: {
                                topRowSelection = topRow
                                showTopRowSelection = false
                            }, label: {
                                Text(topRow.rawValue)
                                    .foregroundColor(topRowSelection == topRow ? .white : .gray)
                                    .bold()
                                    .font(topRowSelection == topRow ? .title : .title2)
                            })
                        }
                        Spacer()
                        Button(action: {
                            showTopRowSelection = false
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom, 30)
                    }
                }
                .ignoresSafeArea()
                .toolbar(.hidden, for: .tabBar)
            }
            
            if showGenreSelection {
                Group {
                    Color.black.opacity(0.9)
                    VStack {
                        Spacer()
                        ScrollView {
                            ForEach(viewModel.allGenre, id: \.self) { genre in
                                Button(action: {
                                    homeGenre = genre
                                    showGenreSelection = false
                                }, label: {
                                    Text(genre.rawValue)
                                        .foregroundColor(homeGenre == genre ? .white : .gray)
                                        .bold()
                                        .font(homeGenre == genre ? .title : .title2)
                                })
                                .padding(.bottom, 40)
                            }
                        }
                        Spacer()
                        Button(action: {
                            showGenreSelection = false
                        }, label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        })
                        .padding(.bottom, 30)
                    }.padding(.top, 50)
                }
                .ignoresSafeArea()
                .toolbar(.hidden, for: .tabBar)
            }
            
        }
        .foregroundColor(.white)
    }
}

#Preview {
    HomeView(
        showPreviewFullScreen: .constant(false),
        previewStartingIndex: .constant(0)
    )
}

struct TopRowButtons: View {
    
    @Binding var topRowSelection: HomeTopRow
    @Binding var homeGenre: HomeGenre
    @Binding var showGenreSelection: Bool
    @Binding var showTopRowSelection: Bool
    
    var body: some View {
        switch topRowSelection {
        case .home:
            HStack {
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("nethflix-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                })
                Spacer()
                Button(action: {
                    topRowSelection = .tvShows
                }, label: {
                    Text("TV Shows")
                })
                Spacer()
                Button(action: {
                    topRowSelection = .movies
                }, label: {
                    Text("Movies")
                })
                Spacer()
                Button(action: {
                    topRowSelection = .myList
                }, label: {
                    Text("My List")
                })
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)

        case .tvShows, .movies, .myList:
            HStack {
                Button(action: {
                    topRowSelection = .home
                }, label: {
                    Image("nethflix-logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60)
                })
                HStack(spacing: 20) {
                    Button(action: {
                        showTopRowSelection = true
                    }, label: {
                        HStack {
                            Text(topRowSelection.rawValue)
                                .font(.system(size: 18))
                            Image(systemName: "triangle.fill")
                                .rotationEffect(.degrees(180), anchor: .center)
                                .font(.system(size: 10))
                        }
                    })
                    Button(action: {
                        showGenreSelection = true
                    }, label: {
                        HStack {
                            Text(homeGenre.rawValue)
                                .font(.system(size: 12))
                            Image(systemName: "triangle.fill")
                                .rotationEffect(.degrees(180), anchor: .center)
                                .font(.system(size: 10))
                        }
                    })
                }
                Spacer()
            }
            .padding(.leading, 10)
            .padding(.trailing, 30)
        }
    }
}

enum HomeTopRow: String, CaseIterable {
    case home = "Home"
    case tvShows = "TV Shows"
    case movies = "Movies"
    case myList = "My List"
}

enum HomeGenre: String {
    case AllGenres = "All Genres"
    case Action
    case Comedy
    case Horror
    case Thriller
    
    static func random() -> HomeGenre {
        let random = Int.random(in: 1..<6)
        switch random {
        case 2:
            return .Action
        case 3:
            return .Comedy
        case 4:
            return .Horror
        case 5:
            return .Thriller
        default:
            return .AllGenres
        }
    }
}
