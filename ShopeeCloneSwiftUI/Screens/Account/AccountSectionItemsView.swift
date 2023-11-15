//
//  AccountSectionItemsView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/15/23.
//

import SwiftUI

struct AccountSectionModel: Identifiable {
    var id = UUID()
    let icon: String
    var iconColor = Color.appGray
    let title: String
}

struct AccountSectionItemsView: View {
    var items: [AccountSectionModel] = []
    var body: some View {
        HStack {
            ForEach(items) { item in
                AccountSectionItem(item: item)
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
    }
}

struct AccountSectionItem: View {
    var item: AccountSectionModel
    var body: some View {
        VStack {
            Image(systemName: item.icon)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 25)
                .foregroundStyle(item.iconColor)
                .padding()
            Text(item.title)
                .font(.caption)
        }
        .foregroundStyle(.appGray)
    }
}

#Preview {
    AccountSectionItemsView()
}
