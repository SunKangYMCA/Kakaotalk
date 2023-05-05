//
//  PersonPlusView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-04.
//

import SwiftUI

struct PersonPlusView: View {
    var body: some View {
        NavigationView {
            VStack {
                PersonSearchSection
                
                PersonButtonSection
                
                Spacer()
                
                Image("SunInviteImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .cornerRadius(30)
                
                Spacer()
            }
        }
    }
    private var PersonSearchSection: some View {
        ZStack {
            HStack {
                DismissXmarkSection(
                    width: 20,
                    height: 20,
                    textColor: .black,
                    onSubmit: {
                        print("## Test Submit Dismiss")
                    }
                )
                .padding(.horizontal, 16)
                
                Spacer()
            }
            
            Spacer()
            
            TextSection(
                title: "Add",
                font: .normalBold,
                textColor: .black
            )
            Spacer()
        }
        .padding()
    }
    
    private var PersonButtonSection: some View {
        HStack(spacing: 32) {
            ImageLinkSection(
                image: "qrcode.viewfinder",
                width: 48,
                height: 48,
                title: "QR Code",
                textColor: .black
                
            )
            
            ImageLinkSection(
                image: "plus.square.on.square",
                width: 48,
                height: 48,
                title: "Add by\nContacts",
                textColor: .black
            )
            
            ImageLinkSection(
                image: "faceid",
                width: 48,
                height: 48,
                title: "Add by ID",
                textColor: .black
            )
            
            ImageLinkSection(
                image: "envelope",
                width: 48,
                height: 48,
                title: "Invite",
                textColor: .black
            )
        }
        .padding(.top, 50)
    }
    
}

struct PersonPlusView_Previews: PreviewProvider {
    static var previews: some View {
        PersonPlusView()
    }
}
