//
//  MainDetailView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct MainDetailView: View {
    
    var user: User
    
    @State private var shouldShowComment: Bool = false
    
    var body: some View {
        ZStack {
            AsyncImage(url: user.largePictureURL) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            } placeholder: {
                Image(systemName: "persom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            }
            
            VStack {
                AsyncImage(url: user.mediumPictureURL) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 150)
                        .cornerRadius(.cornerRadius)
                        .padding(5)
                        .background(
                            Color.white
                                .cornerRadius(.cornerRadius)
                        )
                } placeholder: {
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                }
                TextSection(
                    title: user.fullName,
                    font: .largeHeavy,
                    inColor: .white)
                .shadow(color: .black, radius: 5)
                
                TextSection(
                    title: shouldShowComment ? "Have Good Day, Everone!!" : "Thank for Visit",
                    font: .normal,
                    inColor: .white
                )
            }
            .onAppear {
                shouldShowComment.toggle()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    ImageSystemNameSection(
                        title: "speaker.slash.fill",
                        inColor: .white,
                        width: 24,
                        height: 24
                    )
                    .shadow(color: .black, radius: 2)
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    ImageSystemNameSection(
                        title: "person.circle",
                        inColor: .white,
                        width: 32,
                        height: 32
                    )
                    .shadow(color: .black, radius: 2)

                    ImageSystemNameSection(
                        title: "star.circle",
                        inColor: .white,
                        width: 32,
                        height: 32
                    )
                    .shadow(color: .black, radius: 2)
                }
            }
        }
    }
}

struct MainDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MainDetailView(user: .mockUser)
    }
}
