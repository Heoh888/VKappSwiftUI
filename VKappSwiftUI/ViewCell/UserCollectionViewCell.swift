//
//  UserCollectionView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 27.07.2022.
//

import SwiftUI

struct UserCollectionViewCell: View {
    
    var model: UserCollectionModel
    
    private let width = UIScreen.main.bounds.width / 2 - 10
    
    var body: some View {
        VStack {
            Image(model.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: width, height: width)
                .clipped()
        }
    }
}

struct UserCollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCollectionViewCell(model: UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"))
    }
}
