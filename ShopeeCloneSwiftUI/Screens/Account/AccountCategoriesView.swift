//
//  AccountCategoriesView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/15/23.
//

import SwiftUI

struct AccountCategoriesView: View {
    var body: some View {
        HStack {
            OthersCategory(icon: "circle.hexagongrid.circle", title: "Shop on Shopee")
            OthersCategory(icon: "folder.fill", title: "Free Cash-ins")
            OthersCategory(icon: "barcode.viewfinder", title: "Scan all, Pay")
            OthersCategory(icon: "gamecontroller.fill", title: "Games & Gadgets")
        }
        .padding()
    }
}

#Preview {
    AccountCategoriesView()
}
