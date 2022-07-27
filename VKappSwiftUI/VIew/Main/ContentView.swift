//
//  ContentView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = AuthViewModel()
    
    var body: some View {
            ContainerView(viewModel: viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
