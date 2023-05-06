//
//  SearchFieldSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct SearchFieldSection: View {
    
    private var binding: Binding<String>
    private let placeholder: String
    private let font: Font.SKFontType
    private let backgroundColor: Color
    private let opacity: Double
    private let keyboardType: UIKit.UIKeyboardType
    
    init(
        binding: Binding<String>,
        placeholder: String,
        font: Font.SKFontType,
        backgroundColor: Color,
        opacity: Double,
        keyboardType: UIKit.UIKeyboardType
    ) {
        self.binding = binding
        self.placeholder = placeholder
        self.font = font
        self.backgroundColor = backgroundColor
        self.opacity = opacity
        self.keyboardType = keyboardType
    }
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
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

struct SearchFieldSection_Previews: PreviewProvider {
    static var previews: some View {
        SearchFieldSection(binding: .constant("String"), placeholder: "", font: .small, backgroundColor: .blue, opacity: 0.2, keyboardType: .default)
    }
}
