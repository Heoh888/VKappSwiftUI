//
//  TextFieldCell.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 15.07.2022.
//

import SwiftUI

struct TextFieldCell: View {
    
    // MARK: - Properties
    @StateObject var manager: TextFieldCellModel
    @State var isTapped = false
    
    let textLimit: Bool
    let showLine: Bool
    var icon: String
    var title: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4, content: {
                HStack(spacing: 15) {
                    TextField("", text: $manager.text) { (status) in
                        if status {
                            withAnimation(.easeIn) {
                                isTapped = true
                            }
                        } else {
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
                .background(backgroundText, alignment: .leading)
                .padding(.horizontal)
                
                rectangleLine
                
            })
            .padding(.top, 12)
            .background(Color.gray.opacity(0.09))
            .cornerRadius(5)
            
            if textLimit {
                HStack {
                    Spacer()
                    Text("\(manager.text.count)/15")
                        .font(.caption)
                        .foregroundColor(manager.text.count >= 15 ? .red : .gray)
                        .padding(.trailing)
                        .padding(.top, 4)
                }
            }
        }
        .padding(.bottom)
    }
}

private extension TextFieldCell {
    var backgroundText: some View {
        Text(title)
            .scaleEffect(isTapped ? 0.8 : 1)
            .offset(x: isTapped ? -7 : 0, y: isTapped ? -15 : 0)
            .foregroundColor(isTapped ? .accentColor : .gray)
    }
    
    var rectangleLine: some View {
        Rectangle()
            .fill(isTapped ? Color.accentColor : Color.gray)
            .opacity(showLine ? isTapped ? 1 : 0.5 : 0)
            .frame(height: 1)
            .padding(.top, 10)
    }
}
