//
//  MainTabView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 21.07.2022.
//

import SwiftUI

struct MainTabView: View {
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FriendView()
                .onTapGesture {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "person.fill")
                        .resizable()
                }.tag(0)
            
            GroupView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "rectangle.3.group.bubble.left.fill")
                }.tag(1)
            
            NewsView()
                .onTapGesture {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "newspaper.fill")
                }.tag(2)
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(tabTitle)
    }
    
    var tabTitle: String {
        switch selectedIndex {
        case 0: return "Friend"
        case 1: return "Group"
        case 2: return "News"
        default: return ""
        }
    }
}
