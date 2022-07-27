//
//  FriendCollectionModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 27.07.2022.
//

import Foundation

class UserCollectionModel: Identifiable {
    
    internal init(text: String, imageName: String) {
        self.text = text
        self.imageName = imageName
    }
    
    let id: UUID = UUID()
    let text: String
    let imageName: String
}
