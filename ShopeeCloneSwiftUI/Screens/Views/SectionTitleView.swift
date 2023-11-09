//
//  SectionTitle.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct SectionTitleView: View {
    var title: String
    var body: some View {
        Color.white
            .overlay(alignment: .leading) {
                
                Text(title)
                    .font(.system(size: 20, weight: .bold))
                    .padding([.top, .bottom], 8)
                    .padding(.leading, 10)
                    .padding(.trailing, 20)
                    .background(.red.gradient)
                    .foregroundStyle(.white)
                    .clipShape(.rect(bottomTrailingRadius: 20, topTrailingRadius: 20))
            }
            .frame(height: 80)
    }
}

#Preview {
    SectionTitleView(title: "DAILY VOUCHERS")
}
