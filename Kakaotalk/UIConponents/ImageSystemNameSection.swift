//
//  ImageSystemNameSection.swift
//  111
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct ImageSystemNameSection: View {
    
    private let title: String
    private let inColor: Color
    private let width: CGFloat
    private let height: CGFloat
    
    init(
        title: String,
        inColor: Color,
        width: CGFloat,
        height: CGFloat
    ) {
        self.title = title
        self.inColor = inColor
        self.width = width
        self.height = height
    }
    
    var body: some View {
        
        Image(systemName: title)
            .resizable()
            .foregroundColor(inColor)
            .frame(width: width, height: height)
    }
}
