//
//  MainListView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct MainListView: View {
    
    var user: User
    
    var body: some View {
        
        HStack(spacing: 16) {
            AsyncImage(url: user.thumbnailPictureURL)
            { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            }
        }
        VStack {
            HStack {
            Text(user.fullName)
                .font(.skFont(type: .smallBold))
                Spacer()
            }
            HStack {
            Text("\(user.location.city)\t\(user.location.state)")
                .foregroundColor(.gray)
                Spacer()
            }
        }
    }
}

struct MainListView_Previews: PreviewProvider {
    static var previews: some View {
        MainListView(user: User.mockUser)
    }
}
