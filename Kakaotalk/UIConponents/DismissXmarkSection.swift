//
//  DismissXmarkSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-05.
//

import SwiftUI

struct DismissXmarkSection: View {
    
    @Environment(\.dismiss) var dismiss
    
    private var width: CGFloat
    private var height: CGFloat
    private var textColor: Color
    private var onSubmit: () -> Void
    
    init(
        width: CGFloat,
        height: CGFloat,
        textColor: Color,
        onSubmit: @escaping () -> Void
    ) {
        self.width = width
        self.height = height
        self.textColor = textColor
        self.onSubmit = onSubmit
    }
    
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image(systemName: "xmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .foregroundColor(textColor)
        }
        .onSubmit {
            onSubmit()
        }
    }
}
