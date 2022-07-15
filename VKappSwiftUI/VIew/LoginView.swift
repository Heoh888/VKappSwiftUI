//
//  LoginView.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import SwiftUI

struct LoginView: View {

    @StateObject var userText = LoginViewModel()
    @StateObject var passwordText = LoginViewModel()
    @State var isTapped = false
    
    var body: some View {
        Group {
            VStack(spacing: 5) {
                
                Image("Logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .padding(.vertical, 100.0)
                
                TextFieldCell(icon: "person",
                              title: "Логин",
                              manager: userText,
                              focusedField: { tapValue in
                    isTapped = tapValue
                })

                TextFieldCell(icon: "lock",
                              title: "Пароль",
                              manager: passwordText,
                              focusedField: { tapValue in
                    isTapped = tapValue
                })
                
                Button(action: { print(userText.text, passwordText.text) },
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
        }
        .offset(CGSize(width: 0,
                       height: !isTapped ? 0 : -(UIScreen.main.bounds.width / 2)))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            
    }
}
