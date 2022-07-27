//
//  GroupView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 17.07.2022.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ..< 30 ) { _ in
                    GroupViewCell()
                }
            }
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}
