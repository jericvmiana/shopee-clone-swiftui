//
//  Daily.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct DailyView: View {
    var body: some View {
        ZStack(alignment: .top) {
            NavigationBar()
                .zIndex(1)
            ScrollView {
                Color(.systemTeal)
                    .frame(height: 170)
                CashInView()
                DailyCategoriesView()
                DailyLiveView()
                DailyItemsView()
            }
            .scrollIndicators(.hidden)
            .background(.secondary.opacity(0.1))
        }
    }
}

#Preview {
    DailyView()
}
