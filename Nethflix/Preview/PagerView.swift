//
//  PagerView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 13/05/24.
//

import SwiftUI

struct PagerView<Content: View>: View {
    let pageCount: Int
    @Binding var currentIndex: Int
    @Binding var translation: CGFloat
    @State private var verticalDragIsActive: Bool = false
    let externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>
    let content: Content
    
    func getHorizontalDragGesture(geo: GeometryProxy) -> _EndedGesture<_ChangedGesture<DragGesture>> {
        DragGesture(minimumDistance: 20)
            .onChanged({ value in
                if verticalDragIsActive { return }
                
                if abs(value.translation.width) < abs(value.translation.height) {
                    verticalDragIsActive = true
                    return
                }
                
                translation = value.translation.width
            })
            .onEnded({ value in
                if verticalDragIsActive {
                    verticalDragIsActive = false
                    return
                }
                guard abs(value.translation.width) > geo.size.width / 2  else {
                    self.translation = 0
                    return
                }
                let scrollingSide = value.translation.width / abs(value.translation.width)
//                print(scrollingSide)
                let newIndex = CGFloat(currentIndex) - scrollingSide
                
                currentIndex = min(max(Int(newIndex), 0), pageCount - 1)
                
//                if value.translation.width > 0 {
//                    // its Going to the right
//                    if currentIndex > 0 {
//                        currentIndex -= 1
//                    }
//                } else {
//                    // its going to the left
//                    if currentIndex < pageCount - 1 {
//                        currentIndex += 1
//                    }
//                }
                translation = 0
            })
    }
    
    init(
        pageCount: Int,
        currentIndex: Binding<Int>,
        translation: Binding<CGFloat>,
        externalDragGesture: _EndedGesture<_ChangedGesture<DragGesture>>,
        @ViewBuilder content: () -> Content
    ) {
        self.pageCount = pageCount
        self._currentIndex = currentIndex
        self._translation = translation
        self.externalDragGesture = externalDragGesture
        self.content = content()
    }
    
    var body: some View {
        GeometryReader { geo in
            HStack(spacing: 0) {
                self.content
                    .frame(width: geo.size.width)
            }
            .frame(width: geo.size.width, alignment: .leading)
            .offset(x: -CGFloat(self.currentIndex) * geo.size.width)
            .offset(x: self.translation)
            .animation(.bouncy)
            .gesture(
                externalDragGesture.simultaneously(with: getHorizontalDragGesture(geo: geo))
            )
        }
    }
}

//struct PagerDummy: View {
//    @State private var currentIndex: Int = 0
//    @State private var translation: CGFloat = .zero
//    var body: some View {
//        PagerView(pageCount: 3, currentIndex: $currentIndex, translation: $translation) {
//            Color.red
//            Color.blue
//            Color.black
//        }
//    }
//}
//
//#Preview {
//    PagerDummy()
//}
