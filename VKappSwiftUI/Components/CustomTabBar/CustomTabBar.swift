//
//  CustomTabBar.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 29.07.2022.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectionTab: String
    
    // Сохранение средней точки каждой вкладки для ее анимации в будущем...
    @State var tabPoints: [CGFloat] = []
    
    var body: some View {
        HStack(spacing: 0) {
            // Tab Bar
            TabBarButton(image: "person",
                         selectionTab: $selectionTab,
                         tabPoints: $tabPoints)
            
            TabBarButton(image: "rectangle.3.group.bubble.left",
                         selectionTab: $selectionTab,
                         tabPoints: $tabPoints)
            
            TabBarButton(image: "message",
                         selectionTab: $selectionTab,
                         tabPoints: $tabPoints)
            
            TabBarButton(image: "newspaper",
                         selectionTab: $selectionTab,
                         tabPoints: $tabPoints)
        }
        .padding()
        .background(
            Color.blue
                .clipShape(TabCurve(tabPoint: getCurvePoint() + (UIScreen.main.bounds.width / 2 - 15)))
        )
        .overlay(
            Circle()
                .fill(Color.blue)
                .frame(width: 10, height: 10)
                .offset(x: getCurvePoint() + (UIScreen.main.bounds.width / 2 - 20)),
            alignment: .bottomLeading
        )
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    // Извлечения точек
    func getCurvePoint() -> CGFloat {
        // Eсли точка табуляции пуста
        if tabPoints.isEmpty {
            return 10
        } else {
            switch selectionTab {
            case "person":
                return tabPoints[0]
            case "rectangle.3.group.bubble.left":
                return tabPoints[1]
            case "message":
                return tabPoints[2]
            default:
                return tabPoints[3]
            }
        }
    }
}
