//
//  TabBarButton.swift
//  VKappSwiftUI
//
//  Created by Алексей Ходаков on 29.07.2022.
//

import SwiftUI

struct TabBarButton: View {
    var image: String
    
    @Binding var selectionTab: String
    @Binding var tabPoints: [CGFloat]
    
    var body: some View {
        
        // Для получения средней точки каждой кнопки для анимации кривой
        GeometryReader { render -> AnyView in
            
            // Извлечение средней точки и сохранение
            
            let midX = render.frame(in: .global).midX
            
            DispatchQueue.main.async {
                // Избегание ненужных данных
                if tabPoints.count <= 4 {
                    tabPoints.append(midX)
                }
            }
            
            return AnyView(
                Button(action: {
                    // Меняем Tab
                    // пружинная анимация
                    withAnimation(.interactiveSpring(response: 0.6,
                                                     dampingFraction: 0.5,
                                                     blendDuration: 0.5)) {
                        selectionTab = image
                    }
                }, label: {
                    // Заполнение цветом когда выделена
                    Image(systemName: "\(image)\(selectionTab == image ? ".fill" : "")")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(Color.white)
                    // Поднимает View
                    // когда выбран
                        .offset(y: selectionTab == image ? -10 : 0)
                    
                })
                // Максимальный размер
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
        }
        // Максимальная высота
        .frame(height: 50)
    }
}

