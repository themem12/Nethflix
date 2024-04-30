//
//  View+Extensions.swift
//  Nethflix
//
//  Created by Saavedra, Guillermo on 25/04/24.
//

import Foundation
import SwiftUI

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
