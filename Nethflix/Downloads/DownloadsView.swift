//
//  DownloadsView.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 11/05/24.
//

import SwiftUI

struct DownloadsView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                HStack {
                    Image(systemName: "info.circle")
                    Text("Smart Downloads")
                    Text("ON")
                        .foregroundStyle(.blue)
                    Spacer()
                }
                .padding()
                .font(.system(size: 18, weight: .bold))
                
                ZStack {
                    Circle()
                        .foregroundStyle(.graySearchBackground)
                        .padding(.horizontal, 100)
                    
                    Image(systemName: "arrow.down.to.line.alt")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 75)
                        .foregroundStyle(.gray)
                }
                .frame(height: 275)
                .padding(.top, 75)
                
                VStack(spacing: 20) {
                    Text("Never be without Nethflix")
                        .font(.title2)
                        .bold()
                    Text("Download shows and movies so you'll never be without something to watch \n-- even when you're offline")
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 50)
                    
                    Button(action: {
                        
                    }, label: {
                        Text("See what you Can Download")
                            .foregroundStyle(.black)
                            .padding()
                            .background(Color.white)
                        
                    })
                }
                
                Spacer()
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    DownloadsView()
}
