//
//  SettingView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-05-01.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image("SunSmallImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 64, height: 64)
                        .clipShape(Circle())
                    
                    VStack {
                        HStack {
                            TextSection(
                                title: "Sun Kang",
                                font: .smallBold,
                                inColor: .black
                            )
                            Spacer()
                        }
                        HStack {
                            TextSection(
                                title: "hbty248@naver.com",
                                font: .small,
                                inColor: .gray
                            )
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, 32)
                
                Spacer()
            }
            .navigationTitle("Information")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
