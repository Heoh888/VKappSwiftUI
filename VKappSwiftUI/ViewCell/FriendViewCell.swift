//
//  FriendViewCell.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct FriendViewCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundImage(width: 50, height: 50) {
                    Image("Joker")
                }
                
                VStack(alignment: .leading) {
                    Text("Joker")
                        .font(.system(size: 17,
                                      weight: .semibold))
                    Text("Totally crazy guy")
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

struct FriendViewCell_Previews: PreviewProvider {
    static var previews: some View {
        FriendViewCell()
    }
}
