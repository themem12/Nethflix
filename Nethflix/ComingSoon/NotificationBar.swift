//
//  NotificationBar.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 11/05/24.
//

import SwiftUI

struct NotificationBar: View {
    
    @Binding var showNotificationList: Bool
    
    var body: some View {
        Button(action: {
            //Show notification list
            showNotificationList = true
        }, label: {
            HStack {
                Image(systemName: "bell")
                Text("Notifications")
                Spacer()
                Image(systemName: "chevron.right")
            }
            .font(.system(size: 18, weight: .bold))
        })
        .foregroundStyle(.white)
        .padding()
    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()
        NotificationBar(showNotificationList: .constant(false))
    }
}
