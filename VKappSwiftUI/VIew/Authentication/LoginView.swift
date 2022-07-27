//
//  LoginView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import SwiftUI
import Combine

struct LoginView: View {
    
    // MARK: - Properties
    @State var login = TextFieldCellModel()
    @State var password = TextFieldCellModel()
    @StateObject var viewModel: AuthViewModel
    
    // MARK: - Private properties
    @State private var keyboardHeight: CGFloat = 0
    @State private var showIncorrentCredentialsWarning = false
    
    var body: some View {
        VStack(spacing: 5) {
            
            RoundImage(width: 150, height: 150) {
                Image("Logo")
            }
            .padding(.bottom, 150)
            .padding(.top, 50)
            
            TextFieldCell(manager: login,
                          textLimit: false,
                          showLine: true,
                          icon: "person",
                          title: "Логин")
            
            TextFieldCell(manager: password,
                          textLimit: false,
                          showLine: true,
                          icon: "lock",
                          title: "Пароль")
            
            Button(action: { viewModel.verifyLoginData(login: login.text, password: password.text) },
                   label: {
                Text("Войти")
                    .foregroundColor(.white)
                    .font(.system(size: 19, weight: .semibold))
                    .frame(width: UIScreen.main.bounds.width - 30,
                           height: 40)
                    .background(Color.blue)
                    .cornerRadius(5)
                
            }).padding()
            
            Spacer()
        }
        .padding()
        .padding(.bottom, 70)
        .keyboardAdaptive()
        .onTapGesture {
//            UIApplication.shared.endEditing()
        }.alert(isPresented: $viewModel.showIncorrentCredentialsWarning,
                content: { Alert(title: Text("Error"),
                                 message: Text("Incorrent Login/Password was entered"))
        })
    }
}
