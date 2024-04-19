//
//  WhiteButton.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 16/04/24.
//

import SwiftUI

struct LargeButton: View {
    
    var title: String
    var imageName: String
    var backgroundColor: Color = Color.white
    var action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(title)
                    .font(.system(size: 16))
                    .bold()
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        })
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        LargeButton(title: "Play", imageName: "play.fill") {
            print("WhiteButton tapped")
        }
    }
}
