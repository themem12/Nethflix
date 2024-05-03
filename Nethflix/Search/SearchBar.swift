//
//  SearchBar.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 25/04/24.
//

import SwiftUI

struct SearchBar: View {
    
    @Binding var text: String
    @State private var isEditing: Bool = true
    @Binding var isLoading: Bool
    
    var body: some View {
        HStack {
            ZStack(alignment: .leading) {
                Color.graySearchBackground
                    .frame(height: 36)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.graySearchText)
                        .padding(.leading, 10)
                    
                    TextField("Search", text: $text)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .foregroundColor(.white)
                        .padding(7)
                        .padding(.leading, -7)
                        .onTapGesture(perform: {
                            isEditing = true
                        })
                        .animation(.easeIn, value: 1)
                    if isEditing && text != "" {
                        if isLoading {
                            ProgressView()
                                .progressViewStyle(CircularProgressViewStyle())
                                .tint(.white)
                                .frame(width: 35, height: 35)
                                .padding(.trailing, 8)
                        } else {
                            Button(action: {
                                text = ""
                            }, label: {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.graySearchText)
                                    .frame(width: 35, height: 35)
                            })
                            .padding(.trailing, 8)
                        }
                    }
                }
            }
            .padding(.trailing, 8)
            
            if isEditing {
                Button(action: {
                    text = ""
                    isEditing = false
                    hideKeyboard()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.white)
                })
                .transition(.move(edge: .trailing))
                .animation(.easeIn, value: 1)
            }
        }
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        SearchBar(
            text: .constant(""),
            isLoading: .constant(false)
        )
            .padding()
    }
}
