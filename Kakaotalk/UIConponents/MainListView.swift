//
//  MainListView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct MainListView: View {
    
    var user: User
    
    var body: some View {
        
        HStack(spacing: 16) {
            AsyncImageCircleTypeSection(
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
                        inColor: .black
                    )
                    Spacer()
                }
                HStack {
                    TextSection(
                        title: "\(user.location.city)\t\(user.location.state)",
                        font: .small,
                        inColor: .gray
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
