//
//  MainDetailView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct MainDetailView: View {
    
    var user: User
    
    @State private var shouldShowComment : Bool = false
    
    var body: some View {
        ZStack {
            AsyncImage(url: user.largePictureURL, content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            }) {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
               
            VStack {
            AsyncImage(url: user.mediumPictureURL, content: { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .cornerRadius(.cornerRadius)
                    .padding(5)
                    .background(Color.white.cornerRadius(.cornerRadius))
               
            }) {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
                Text(user.fullName)
                    .foregroundColor(.white)
                    .font(.skFont(type: .largeHeavy))
                    .shadow(color: .black, radius: 5)
                
                Text(shouldShowComment ? "Have Good Day, Everone!!" : "Thank you for visit!!")
                    .foregroundColor(.white)
                    .font(.skFont(type: .normal))
                    .shadow(color: .black, radius: 5)
                
                  
            }
            .onAppear {
                shouldShowComment.toggle()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "speaker.slash.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 24, height: 24)
                        .shadow(color: .black, radius: 2)
                }
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Image(systemName: "person.circle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                        .shadow(color: .black, radius: 2)
                    
                    Image(systemName: "star.circle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 32, height: 32)
                        .shadow(color: .black, radius: 2)
                }
            }
        }
    }
}

struct MainDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MainDetailView(user: User.mockUser)
    }
}
