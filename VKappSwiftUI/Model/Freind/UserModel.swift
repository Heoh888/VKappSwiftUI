//
//  FriendModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 27.07.2022.
//

import Foundation

class UserModel: Identifiable {
    
    internal init(name: String, imageName: String, status: String, collectionImage: [UserCollectionModel]) {
        self.name = name
        self.imageName = imageName
        self.status = status
        self.collectionImage = collectionImage
    }
    
    let id: UUID = UUID()
    let name: String
    let imageName: String
    let status: String
    let collectionImage: [UserCollectionModel]
}
