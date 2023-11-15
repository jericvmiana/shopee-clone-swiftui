//
//  OthersCategory.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/15/23.
//

import SwiftUI

struct OthersCategory: View {
    var icon = "folder.fill"
    var title = "Shop on Shopee"
    var body: some View {
        VStack {
            Image(systemName: icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 30)
                .foregroundStyle(.appPrimary)
                .padding(.bottom, 5)
            Text(title)
                .font(.footnote)
                .foregroundStyle(.appGray)
                .lineLimit(1)
        }
    }
}

#Preview {
    OthersCategory()
}
