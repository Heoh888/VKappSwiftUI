//
//  FriendCollectionView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 27.07.2022.
//

import SwiftUI
//import ASCollectionView_SwiftUI

struct UserCollectionView: View {
    
    var model: UserModel
    
    var body: some View
    {
        ScrollView(.vertical, showsIndicators: false) {
            ForEach(0 ..< model.collectionImage.count - 1, id: \.self) { i in
                HStack(spacing: 5) {
                    ForEach(i...i + 1, id: \.self) { j in
                        UserCollectionViewCell(model: model.collectionImage[j])
                    }
                }
            }
        }
    }
}

struct UserCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        UserCollectionView(model:  UserModel(name: "Joker1",
                                             imageName: "Joker",
                                             status: "Totally crazy guy1",
                                             collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                               UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                               UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                               UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]))
    }
}
