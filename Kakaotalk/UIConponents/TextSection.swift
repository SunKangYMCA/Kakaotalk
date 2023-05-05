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
    private let inColor: Color
    
    init(
        title: String,
        font: Font.SKFontType,
        inColor: Color
    ) {
        self.title = title
        self.font = font
        self.inColor = inColor
    }
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(inColor)
                .font(.skFont(type: font))
                
        }
    }
}
