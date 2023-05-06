//
//  CircledImage.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct CircledImage: View {
    
    private let title: URL?
    private let width: CGFloat
    private let height: CGFloat
    private let placeholderSysName: String
    
    init(
        title: URL?,
        width: CGFloat,
        height: CGFloat,
        placeholderSysname: String
    ) {
        self.title = title
        self.width = width
        self.height = height
        self.placeholderSysName = placeholderSysname
    }
    
    var body: some View {
        AsyncImage(url: title) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .clipShape(Circle())
        } placeholder: {
            Image(systemName: placeholderSysName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .clipShape(Circle())
        }
    }
}


struct CircledImage_Previews: PreviewProvider {
    static var previews: some View {
        CircledImage(title: URL(string: ""), width: 5, height: 5, placeholderSysname: "123")
    }
}
