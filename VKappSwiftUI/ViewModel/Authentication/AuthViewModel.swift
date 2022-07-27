//
//  LoginViewModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import Foundation

class AuthViewModel: ObservableObject {
    
    @Published var isUserLoggedIn: Bool = false
    @Published var showIncorrentCredentialsWarning = false
    
     func verifyLoginData(login: String, password: String) {
        if login == "1" && password == "1" {
            isUserLoggedIn = true
        } else {
            showIncorrentCredentialsWarning = true
        }
    }
}
