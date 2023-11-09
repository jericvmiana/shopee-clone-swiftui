//
//  BannerView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct BannerView: View {
    var body: some View {
        VStack {
            HStack {
                Image("shopee-banner1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)

                    .clipShape(.rect(cornerRadius: 7))
                    .padding(.leading, 10)
                Image("shopee-banner2")
                    .resizable()
                    .frame(height: 120)

                    .clipShape(.rect(cornerRadius: 7))
                Image("shopee-banner3")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 100, height: 120)

                    .clipShape(.rect(cornerRadius: 7))
                    .padding(.trailing, 10)
            }
            .padding([.top, .bottom])
        }
        .background(.white)
    }
}

#Preview {
    BannerView()
}
