//
//  TextFieldCellModel.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 22.07.2022.
//

import Foundation

class TextFieldCellModel: ObservableObject {

    @Published var text = "" {
        didSet {
            if text.count > 15 && oldValue.count <= 15 {
                text = oldValue
            }
        }
    }
}
