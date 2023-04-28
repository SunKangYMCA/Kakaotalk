//
//  MySectionView.swift
//  Kakaotalk
//
//  Created by 강성찬 on 2023-04-26.
//

import SwiftUI

struct MySectionView: View {
    var body: some View {
        HStack {
            Image("SunSmallImage")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: 64)
                .clipShape(Circle())
            VStack {
                HStack {
                    Text("Sun Kang")
                        .font(.skFont(type: .smallBold))
                    Spacer()
                }
                HStack {
                    Text("hbty248@naver.com")
                        .tint(.gray)
                    Spacer()
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

struct MySectionView_Previews: PreviewProvider {
    static var previews: some View {
        MySectionView()
    }
}
