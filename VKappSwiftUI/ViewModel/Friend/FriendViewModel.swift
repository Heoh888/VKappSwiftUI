//
//  FriendViewModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 27.07.2022.
//

import Foundation
import UIKit

class FriendViewModel: ObservableObject {
    
    @Published var friends: [UserModel] = [UserModel(name: "Joker1",
                                                         imageName: "Joker",
                                                         status: "Totally crazy guy1",
                                                         collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]),
                                           UserModel(name: "Joker2",
                                                         imageName: "Joker",
                                                         status: "Totally crazy guy2",
                                                         collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]),
                                           UserModel(name: "Joker3",
                                                         imageName: "Joker",
                                                         status: "Totally crazy guy3",
                                                         collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]),
                                           UserModel(name: "Joker4",
                                                         imageName: "Joker",
                                                         status: "Totally crazy guy4",
                                                         collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]),
                                           UserModel(name: "Joker5",
                                                         imageName: "Joker",
                                                         status: "Totally crazy guy5",
                                                         collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                                           UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")])]
}
