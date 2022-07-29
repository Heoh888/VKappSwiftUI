//
//  MainTabView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 21.07.2022.
//

import SwiftUI

struct MainView: View {
    
    @State var selectionTab = "person"
    
    var viewModel = MainViewModel()
    
    var body: some View {
        ZStack {
            viewModel.getView(selected: selectionTab)
            // Custom Tab Bar...
            VStack {
                Spacer()
                ZStack(alignment: .top) {
                    
                    VStack {
                        Color.white
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 150)
                    .blur(radius: 15)
                    .ignoresSafeArea()
                    
                    CustomTabBar(selectionTab: $selectionTab)
                }
            }.offset(y: 77)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
