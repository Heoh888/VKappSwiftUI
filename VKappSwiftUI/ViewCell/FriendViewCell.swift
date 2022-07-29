//
//  FriendViewCell.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct FriendViewCell: View {
    
    var model: UserModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundImage(width: 50, height: 50) {
                    Image(model.imageName)
                }
                
                VStack(alignment: .leading) {
                    Text(model.name)
                        .font(.system(size: 17,
                                      weight: .semibold))
                    Text(model.status)
                        .foregroundColor(.gray)
                        .font(.system(size: 12,
                                      weight: .regular))
                }
                
                Spacer()
            }
            .padding(5.0)
            .padding(.leading)
            Divider()
            
        }
        .background(.white)
    }
}

struct FriendViewCell_Previews: PreviewProvider {
    static var previews: some View {
        FriendViewCell(model: UserModel(name: "Joker1",
                                        imageName: "Joker",
                                        status: "Totally crazy guy1",
                                        collectionImage: [UserCollectionModel(text: "Totally crazy guy1", imageName: "Joker"),
                                                          UserCollectionModel(text: "Totally crazy guy2", imageName: "Joker"),
                                                          UserCollectionModel(text: "Totally crazy guy3", imageName: "Joker"),
                                                          UserCollectionModel(text: "Totally crazy guy4", imageName: "Joker")]))
    }
}
