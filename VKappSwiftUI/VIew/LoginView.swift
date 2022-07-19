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
    @StateObject var userText = LoginViewModel()
    @StateObject var passwordText = LoginViewModel()
    
    // MARK: - Private properties
    @State private var keyboardHeight: CGFloat = 0
    
    var body: some View {
        VStack(spacing: 5) {
            
            RoundImage(width: 150, height: 150) {
                Image("Logo")
            }.padding(.vertical, 100.0)
            
            TextFieldCell(textLimit: false,
                          icon: "person",
                          title: "Логин",
                          manager: userText)
            
            TextFieldCell(textLimit: false,
                          icon: "lock",
                          title: "Пароль",
                          manager: passwordText)
            
            Button(action: { print(userText.text,
                                   passwordText.text) },
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
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
        
    }
}
