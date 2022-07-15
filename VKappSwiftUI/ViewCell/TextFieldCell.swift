//
//  TextFieldCell.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import SwiftUI

struct TextFieldCell: View {
    
    var icon: String
    var title: String

    @StateObject var manager: LoginViewModel

    @State var focusedField: (Bool) -> ()
    @State var isTapped = false
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4, content: {
                HStack(spacing: 15) {
                    TextField("", text: $manager.text) { (status) in
                        if status {
                            focusedField(status)
                            withAnimation(.easeIn) {
                                isTapped = true
                            }
                        } else {
                            focusedField(status)
                            if manager.text == "" {
                                withAnimation(.easeOut) {
                                    isTapped = false
                                }
                            }
                        }
                    }
                    if !isTapped {
                        Image(systemName: icon)
                            .opacity(0.3)
                    }
                }
                .padding(.top, isTapped ? 15 : 0)
                .background(
                    Text(title)
                        .scaleEffect(isTapped ? 0.8 : 1)
                        .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0)
                        .foregroundColor(isTapped ? .accentColor : .gray)
                    , alignment: .leading
                )
                .padding(.horizontal)
                
                Rectangle()
                    .fill(isTapped ? Color.accentColor : Color.gray)
                    .opacity(isTapped ? 1 : 0.5)
                    .frame(height: 1)
                    .padding(.top, 10)
            })
            .padding(.top, 12)
            .background(Color.gray.opacity(0.09))
            .cornerRadius(5)
            
            HStack {
                Spacer()
                Text("\(manager.text.count)/15")
                    .font(.caption)
                    .foregroundColor(manager.text.count >= 15 ? .red : .gray)
                    .padding(.trailing)
                    .padding(.top, 4)
            }
        }
        .padding()
    }
}
