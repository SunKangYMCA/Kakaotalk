//
//  DismissCancelSection.swift
//  111
//
//  Created by 강성찬 on 2023-05-02.
//

import SwiftUI

struct DismissCancelSection: View {
    
    @Environment(\.dismiss) var dismiss
    
    private var title: String
    private var font: Font.SKFontType
    private var inColor: Color
    private var onSubmit: () -> Void
    
    init(
        title: String,
        font: Font.SKFontType,
        inColor: Color,
        onSubmit: @escaping () -> Void
    ) {
        self.title = title
        self.font = font
        self.inColor = inColor
        self.onSubmit = onSubmit
    }
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text(title)
                .font(.skFont(type: font))
                .foregroundColor(inColor)
        }
        .onSubmit {
            onSubmit()
        }
    }
}
