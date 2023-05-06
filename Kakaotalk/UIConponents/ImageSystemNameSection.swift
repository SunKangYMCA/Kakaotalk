//
//  ImageSystemNameSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct ImageSystemNameSection: View {
    
    private let title: String
    private let textColor: Color
    private let width: CGFloat
    private let height: CGFloat
    
    init(
        title: String,
        textColor: Color,
        width: CGFloat,
        height: CGFloat
    ) {
        self.title = title
        self.textColor = textColor
        self.width = width
        self.height = height
    }
    
    var body: some View {
        
        Image(systemName: title)
            .resizable()
            .foregroundColor(textColor)
            .frame(width: width, height: height)
    }
}
