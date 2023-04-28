//
//  PersonPlusPage.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-25.
//

import SwiftUI

struct PersonPlusPage: View {
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal, 16)
                    Spacer()
                }
                
                Spacer()
                
                Text("Add")
                    .font(.skFont(type: .normalBold))
                
                Spacer()
            }
            .padding()
            HStack(spacing: 16) {
                makeActionButton(title: "QR Code", image: "qrcode.viewfinder") {
                    //
                }
                makeActionButton(title: "Add by\nContacts", image: "plus.square.on.square") {
                    //
                }
                makeActionButton(title: "Add by ID", image: "faceid") {
                    //
                }
                makeActionButton(title: "Invite", image: "envelope") {
                    //
                }
                
            }
            .padding(.top, 50)
            
            Spacer()
            
            Image("SunInviteImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .cornerRadius(30)
            
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Add")
                    .font(.skFont(type: .smallBold))
            }
        }
    }
    func makeActionButton(
        title: String,
        image: String,
        onTap: @escaping () -> Void
    ) -> some View {
        return Button {
            onTap()
        } label: {
            VStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 48, height: 48)
                Text(title)
                
            }
            .foregroundColor(.black)
            
            
        }
        
    }
}


struct PersonPlusPage_Previews: PreviewProvider {
    static var previews: some View {
        PersonPlusPage()
    }
}
