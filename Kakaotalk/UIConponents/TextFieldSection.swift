//
//  TextFieldSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-02.
//

import SwiftUI

struct TextFieldSection: View{
    
    private let title: String
    private var binding: Binding<String>
    private let placeholder: String
    private let font: Font.SKFontType
    private let backgroundColor: Color
    private let opacity: Double
    private let keyboardType: UIKit.UIKeyboardType
    
    init(
        title: String,
        binding: Binding<String>,
        placeholder: String,
        font: Font.SKFontType,
        backgroundColor: Color,
        opacity: Double,
        keyboardType: UIKit.UIKeyboardType
    ) {
        self.title = title
        self.binding = binding
        self.placeholder = placeholder
        self.font = font
        self.backgroundColor = backgroundColor
        self.opacity = opacity
        self.keyboardType = keyboardType
    }
    
    var body: some View {
        HStack {
            Text(title)
                .font(.skFont(type: font))
            TextField(text: binding) {
                Text(placeholder)
                    .font(.skFont(type: font))
            }
        }
        .padding()
        .background(
            backgroundColor
                .opacity(opacity)
                .cornerRadius(.cornerRadius)
        )
        .keyboardType(keyboardType)
        .padding(.horizontal, 16)
    }
}
