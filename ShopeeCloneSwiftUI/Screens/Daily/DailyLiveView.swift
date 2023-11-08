//
//  ShopeeLiveView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/8/23.
//

import SwiftUI

struct DailyLiveView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("SHOPEE LIVE")
                .font(.system(size: 17, weight: .semibold))
                .foregroundStyle(.orange)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(0..<10) { _ in
                        DailyLiveCellView()
                    }
                }
            }
            SaleProductsView()
        }
        .padding()
        .background(.white)
        .offset(y: -10)
        .scrollIndicators(.hidden)
    }
}

#Preview {
    DailyLiveView()
}
