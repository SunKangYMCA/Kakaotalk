//
//  MainListView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-02.
//

import SwiftUI

struct MainListView: View {
    
    var user: User
    
    var body: some View {
        
        HStack(spacing: 24) {
            CircledImage(
                title: user.thumbnailPictureURL,
                width: 48,
                height: 48,
                placeholderSysname: "person"
            )
     
            VStack {
                HStack {
                    TextSection(
                        title: user.fullName,
                        font: .smallBold,
                        textColor: .black
                    )
                    Spacer()
                }
                HStack {
                    TextSection(
                        title: "\(user.location.city)\t\(user.location.state)",
                        font: .small,
                                                textColor: .gray
                    )
                    Spacer()
                }
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView(user: .mockUser)
    }
}
