//
//  GroupViewCell.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct GroupViewCell: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                RoundImage(width: 50, height: 50) {
                    Image("DC")
                }
                
                VStack(alignment: .leading) {
                    Text("Antiheroes of the universe DC")
                        .font(.system(size: 17,
                                      weight: .semibold))
                }
                Spacer()
            }
            .padding(.horizontal)
            Divider()
        }
    }
}

struct GroupViewCell_Previews: PreviewProvider {
    static var previews: some View {
        GroupViewCell()
    }
}
