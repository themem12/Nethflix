//
//  SmallVerticalButton.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 15/04/24.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    
    var imageName: String {
        return isOn ? isOnImage : isOffImage
    }

    var action: () -> Void
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            VStack {
                Image(systemName: imageName)
                Text(text)
                    .font(.system(size: 14))
                    .bold()
            }.foregroundColor(.white)
        })
    }
}

#Preview {
    ZStack {
        Color.black
            .edgesIgnoringSafeArea(.all)
        SmallVerticalButton(
            text: "My list",
            isOnImage: "checkmark",
            isOffImage: "plus",
            isOn: true, 
            action: {
                print("SmallVerticalButton tapped")
            }
        )
    }
}
