//
//  CellImage.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct RoundImage: View {
    
    // MARK: - Properties
    let width: CGFloat
    let height: CGFloat
    var content: Image
    
    // MARK: - Initialisation
    init(width: CGFloat, height: CGFloat, @ViewBuilder content: () -> Image) {
        self.width = width
        self.height = height
        self.content = content()
    }
    
    var body: some View { content
        .resizable()
        .scaledToFill()
        .frame(width: width, height: height)
        .clipped()
        .clipShape(Circle())
        .padding(.trailing, 5.0)
    }
}
