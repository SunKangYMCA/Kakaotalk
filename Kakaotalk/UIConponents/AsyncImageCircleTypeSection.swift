//
//  AsyncImageCircleTypeSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct AsyncImageCircleTypeSection: View {
    
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


struct AsyncImageCircleTypeSection_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageCircleTypeSection(title: URL(string: ""), width: 5, height: 5, placeholderSysname: "123")
    }
}
