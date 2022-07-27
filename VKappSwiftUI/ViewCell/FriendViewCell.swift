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
                    Divider()
                }
                
                Spacer()
            }
            .padding([.leading, .bottom, .trailing])
        }
    }
}
