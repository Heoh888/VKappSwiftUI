//
//  MainViewModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 29.07.2022.
//

import Foundation
import SwiftUI

class MainViewModel {
    
    @ViewBuilder func getView(selected: String) -> some View {
        switch selected {
        case "person":
            FriendView()
        case "rectangle.3.group.bubble.left":
            GroupView()
        case "message":
            NewsView()
        default:
            NewsView()
        }
    }
}
