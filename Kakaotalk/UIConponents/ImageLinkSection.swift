//
//  ImageLinkSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-05.
//

import SwiftUI

struct ImageLinkSection: View {
    
//    private var destination: () -> AnyView
    private let image: String
    private let width: CGFloat
    private let height: CGFloat
    private let title: String
    private let inColor: Color
    
    init(
//        destination: @escaping ()-> AnyView,
        image: String,
        width: CGFloat,
        height: CGFloat,
        title: String,
        inColor: Color
        
    ) {
//        self.destination = destination
        self.image = image
        self.width = width
        self.height = height
        self.title = title
        self.inColor = inColor
        
    }
    
    
    var body: some View {
        NavigationLink {
//            destination()
            QRImageView()
        } label: {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width, height: height)
                Text(title)
            }
            .foregroundColor(inColor)
        }
    }
}


