//
//  ProfileSection.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-27.
//

import SwiftUI

struct ProfileSection: View {
    
    private let rows: [GridItem] = [GridItem(.flexible())]
    
    var users: [User]
    

    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                ForEach(users) { user in
                    HStack {
                        AsyncImage(url: user.thumbnailPictureURL)
                        { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 36, height: 36)
                                .clipShape(Circle())
                        } placeholder: {
                            Image(systemName: "person")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 16, height: 16)
                                .clipShape(Circle())
                        }

                        Text(user.fullName)
                            .font(.skFont(type: .smallBold))

                    }


                    .padding(.horizontal, 32)
                    .background(
                        Color.gray
                            .opacity(0.4)
                            .cornerRadius(.cornerRadius)
                    )
                }

            }
            .frame(height: 50)
           

        }

    }
}

struct ProfileSection_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSection(users: [User.mockUser])
    }
}
