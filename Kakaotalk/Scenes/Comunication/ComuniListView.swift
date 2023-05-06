//
//  ComuniListView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct ComuniListView: View {
    
    var user: User
    
    var body: some View {
        HStack(spacing: 16) {
            CircledImage(
                title: user.thumbnailPictureURL,
                width: 64,
                height: 64,
                placeholderSysname: "person"
            )
            
            VStack {
                HStack {
                    TextSection(
                        title: user.name.first,
                        font: .normalHeavy,
                        textColor: .black
                    )
                    Spacer()
                }
                
                HStack {
                    TextSection(
                        title: user.location.timezone.description,
                        font: .small,
                        textColor: .gray
                    )
                    Spacer()
                }
            }
        }
    }
}

struct ComuniListView_Previews: PreviewProvider {
    static var previews: some View {
        ComuniListView(user: User.mockUser)
    }
}