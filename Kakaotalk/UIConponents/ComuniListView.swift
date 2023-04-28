//
//  ComuniListView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-27.
//

import SwiftUI

struct ComuniListView: View {
    
    var user: User
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: user.thumbnailPictureURL)
            { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            } placeholder: {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                    .clipShape(Circle())
            }
            VStack {
                
                HStack {
                    Text(user.name.first)
                        .foregroundColor(.black)
                        .font(.skFont(type: .normalHeavy))
                    Spacer()
                }
                
                HStack {
                    Text(user.location.timezone.description)
                        .foregroundColor(.gray)
                        .font(.skFont(type: .small))
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
