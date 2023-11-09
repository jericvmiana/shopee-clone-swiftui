//
//  BrandVouchers.swift
//  ShopeeCloneSwiftUI
//
//  Created by phjemi on 11/9/23.
//

import SwiftUI

struct BrandVouchers: View {
    private let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)

    var body: some View {
        VStack(alignment: .leading) {
            SectionTitleView(title: "BRAND VOUCHERS")
            LazyVGrid(columns: columns) {
                ForEach(0..<4) { _ in
                    HStack(spacing: 0) {
                        VStack {
                            
                            Image("adidas")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .scaledToFill()
                                .clipShape(.circle)
                            
                            Text("adidas Official Store")
                                .font(.subheadline)
                                .lineLimit(3)
                                .padding([.leading, .trailing], 10)
                        }
                        .frame(height: 180)
                        .border(width: 0.3, edges: [.top, .leading, .bottom], color: .secondary)

                        VStack(alignment: .leading) {
                            Text("5% off")
                                .font(.system(size: 15, weight: .semibold))
                            Text("Mall")
                                .font(.footnote)
                                .padding(3)
                                .border(.primary)
                                .foregroundStyle(.appPrimary)
                            Text("Min. Spend P200")
                                .font(.footnote)

                            Button {
                                
                            } label: {
                                Text("Claim")
                                    .font(.footnote)
                                    .padding(5)
                                    .foregroundStyle(.white)
                            }
                            
                            .frame(maxWidth: .infinity)
                            .background(.appPrimary)
                        }
                        .padding(5)
                        .frame(height: 180)
                        .border(.secondary, width: 0.3)
                        .overlay(alignment: .bottomTrailing) {
                            Text("T&C")
                                .padding(5)
                                .offset(y: -7)
                                .foregroundStyle(.blue)
                                .font(.footnote)
                        }
                    }
                }
            }
            .padding([.leading, .trailing, .bottom], 10)
        }
        .background(.white)
    }
}

#Preview {
    BrandVouchers()
}
