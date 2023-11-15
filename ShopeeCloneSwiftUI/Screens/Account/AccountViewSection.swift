//
//  AccountViewSectionTitle.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/15/23.
//

import SwiftUI

struct AccountViewSection: View {
    var icon: String = "circle.circle.fill"
    var iconColor = Color.appPrimary
    var title: String = "ShopeePay Extra Cashback"
    var titleColor = Color.appGray
    var showRightButton = true
    var rightButtonTitle = ""
    var rightButtonTitleColor = Color.appGray

    var body: some View {
        HStack(spacing: 5) {
            Image(systemName: icon)
                .resizable()
                .scaledToFit()
                .aspectRatio(1, contentMode: .fit)
                .frame(height: 25)
                .foregroundStyle(iconColor)
            Text(title)
                .padding(.leading, 7)
                .foregroundStyle(.appGray)
            Spacer()
            
            if showRightButton {
                Button {} label: {
                    HStack {
                        Text(rightButtonTitle)
                            .foregroundStyle(titleColor)
                            .font(.footnote)
                            .foregroundStyle(rightButtonTitleColor)
                        Image(systemName: "chevron.right")
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: 8)
                    }
                }
                .foregroundStyle(.appGray)
            }
        }
        .padding(15)
        Divider()
    }
}

#Preview {
    AccountViewSection()
}
