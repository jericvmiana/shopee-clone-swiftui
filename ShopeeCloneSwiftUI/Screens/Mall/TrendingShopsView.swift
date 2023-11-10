//
//  TrendingShopsView.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/9/23.
//

import SwiftUI

struct TrendingShopsView: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                SectionTitlePlainView(title: "TRENDING SHOPS", addSeeMoreBtn: true)
            }
            ScrollView(.horizontal) {
                HStack {

                ForEach(0..<10) { _ in
                        VStack {
                            Image("adidas")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 40)
                                .clipped()
                                .padding()
                                .border(.appBorder)

                         
                            Image("adidas")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 40)
                                .clipped()
                                .padding()
                                .border(.appBorder)
                        }
                    }
                }
            }
            .background(.white)
            .contentMargins(10, for: .scrollContent)
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    TrendingShopsView()
}
