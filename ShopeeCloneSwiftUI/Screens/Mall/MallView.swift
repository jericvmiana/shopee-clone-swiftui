//
//  MallView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct MallView: View {
    var body: some View {
        ZStack(alignment: .top) {
            
            NavigationBar()
            
            ScrollView() {
                VStack(alignment: .leading, spacing: 0) {
                    CarouselView()
                    HStack {
                        ForEach(0..<1) { _ in
                            CategoriesView(
                                category: Category(columns: .init(repeating: .init(.flexible()), count: 4), items: 4)
                            )
                        }
                    }
                    
                    VouchersView()
                    BannerView()
                    
                    VStack(alignment: .leading, spacing: 0) {
                        SectionTitleView(title: "FEATURE BRANDS")
                        CarouselView()
                    }
                    
                    SaleProductsMallView()
                    BrandVouchers()
                        .padding(.bottom)
                    ProductCategoriesView()
                        .padding(.bottom)
                    TrendingShopsView()
                        .padding(.bottom)
                    SectionTitlePlainView(title: "JUST FOR YOU")
                    DailyItemsView()
                }
            }
            .scrollIndicators(.hidden)
            .background(.secondary.opacity(0.1))
        }
    }
}

#Preview {
    MallView()
}
