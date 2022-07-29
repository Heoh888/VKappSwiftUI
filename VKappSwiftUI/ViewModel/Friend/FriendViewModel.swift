//
//  FriendViewModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 27.07.2022.
//

import Foundation
import UIKit

class FriendViewModel: ObservableObject {
    
    @Published var friends: [UserModel] = []
    
    init() {
        mock(friend: 30)
    }
    
    func mock(friend: Int) {
        
        for i in 0 ..< friend {
            friends.append(UserModel(name: "Joker\(i)",
                                     imageName: "Joker",
                                     status: "Totally crazy guy5",
                                     collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                       UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                       UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                       UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]))
        }
    }
}
