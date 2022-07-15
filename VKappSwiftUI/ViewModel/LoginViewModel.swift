//
//  LoginViewModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var text = "" {
        didSet {
            if text.count > 15 && oldValue.count <= 15 {
                text = oldValue
            }
        }
    }
}
