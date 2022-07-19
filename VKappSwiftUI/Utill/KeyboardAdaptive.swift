//
//  KeyboardAdaptive.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import Combine
import SwiftUI

struct KeyboardAdaptive: ViewModifier {
    
    // MARK: - Properties
    @State private var keyboardHeight: CGFloat = 0

    func body(content: Content) -> some View {
        content
            .padding(.bottom, keyboardHeight)
            .onReceive(Publishers.keyboardHeight) { self.keyboardHeight = $0 }
    }
}
