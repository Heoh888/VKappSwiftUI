//
//  FriendView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct FriendView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 10 ) { _ in
                    FriendViewCell()
                }
            }
        }
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
