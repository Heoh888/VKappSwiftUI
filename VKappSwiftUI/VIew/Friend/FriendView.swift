//
//  FriendView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct FriendView: View {
    
    var viewModel = FriendViewModel()
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(viewModel.friends) { user in
                    NavigationLink {
                        UserCollectionView(model: user)
                    } label: {
                        FriendViewCell(model: user)
                    }.foregroundColor(.black)
                }
            }
            .padding(.top)
        }
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
