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
            
            ScrollView {
                CarouselView()
                CashInView()
                VStack {
                    CategoriesView(
                        category: Category(columns: .init(repeating: .init(.flexible()), count: 5), items: 10)
                    )
                    BannerView()
                }
                .background(.white)
                .offset(y: -20)
            
                DailyLiveView()
                DailyItemsView()
            }
            .scrollIndicators(.hidden)
            .background(.scrollBackground)
        }
    }
}

#Preview {
    DailyView()
}
