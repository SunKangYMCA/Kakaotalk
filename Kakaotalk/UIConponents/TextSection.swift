//
//  TextSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct TextSection: View {
    
    private let title: String
    private let font: Font.SKFontType
    private let textColor: Color
    
    init(
        title: String,
        font: Font.SKFontType,
        textColor: Color
    ) {
        self.title = title
        self.font = font
        self.textColor = textColor
    }
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(textColor)
                .font(.skFont(type: font))
                
        }
    }
}