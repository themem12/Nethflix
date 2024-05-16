//
//  PreviewList.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 15/05/24.
//

import SwiftUI

struct PreviewList: View {
    
    var movies: [MovieModel]
    @Binding var currentIndex: Int
    @Binding var isVisible: Bool
    @State private var currentTranslation: CGFloat = 0
    
    let externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>
    
    let screen = UIScreen.main.bounds
    
    func shouldPlayVideo(index: Int) -> Bool {
        //Refactor
        if !isVisible { return false }
        if index != currentIndex { return false }
        return true
    }
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            PagerView(
                pageCount: movies.count,
                currentIndex: $currentIndex,
                translation: $currentTranslation,
                externalDragGesture: externalDragGesture) {
                    ForEach(0..<movies.count) { movieIndex in
                        let movie = movies[movieIndex]
                        PreviewView(
                            viewModel: PreviewViewModel(movie: movie),
                            playVideo: shouldPlayVideo(index: movieIndex)
                        )
                        .frame(width: screen.width)
                    }
                }
                .frame(width: screen.width)
        }
    }
}

//struct DummyPreviewList: View {
//    @State private var currentIndex: Int = 0
//    @State private var isVisible: Bool = true
//    var body: some View {
//        PreviewList(
//            movies: mockMovieList,
//            currentIndex: $currentIndex,
//            isVisible: $isVisible, 
//            externalDragGesture: 
//        )
//    }
//}
//
//#Preview {
//    DummyPreviewList()
//}
