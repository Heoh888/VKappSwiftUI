//
//  ContainerView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 25.07.2022.
//

import SwiftUI

struct ContainerView: View {
    
    @StateObject var viewModel: AuthViewModel
    @State var selectedIndex = 0
    
    var body: some View { NavigationView {
        HStack {
            LoginView(viewModel: viewModel)
            
            //MARK: - NAVIGATION LINKS
            NavigationLink(destination: MainTabView(selectedIndex: $selectedIndex),
                           isActive: $viewModel.isUserLoggedIn) {
                EmptyView()
            }
        }
    }
    }
}
